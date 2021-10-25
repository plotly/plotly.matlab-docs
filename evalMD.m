function mdContents = evalMD()
fclose all; clc;

% Let list of md files
fileList = dir('matlab/*.md');

% Loop over all files
for i = 45%1 :length(fileList)
    fileName = fullfile(fileList(i).folder,fileList(i).name);
    fprintf('Evaluating (%03d): %s\n',i,['matlab/',fileList(i).name]);
    mdContents = readlines(fileName,'Encoding','UTF-8');
    mdContents = arrayfun(@(x) replace(x,"```{matlab}","&&&S"), mdContents);
    mdContents = arrayfun(@(x) replace(x,"```","&&&E"), mdContents);

    mdContents = formCBs(mdContents);
    
    mdContents = arrayfun(@(x) replace(x,'&&&S','```{matlab}'), mdContents);
    mdContents = arrayfun(@(x) replace(x,'&&&E','```'), mdContents);
    
    mdContents = join(mdContents,newline);
    
    if ~isfolder('tempF')
        mkdir('tempF');
    end
    
    [~,a,b]=fileparts(fileName);
    f = fopen(fullfile('tempF',fileList(i).name),'wb','ieee-le','UTF-8');
    fwrite(f,mdContents,'char');
    fclose(f);
    close all force;
end

end

function out = formCBs(txtIn)
out = txtIn;

sIdx = strfind(txtIn,'&&&S','ForceCellOutput',true);
eIdx = strfind(txtIn,'&&&E','ForceCellOutput',true);
st = find(cellfun(@(x) ~isempty(x), sIdx, 'UniformOutput', true));
ed = find(cellfun(@(x) ~isempty(x), eIdx, 'UniformOutput', true));

if numel(st) ~= numel(ed)
    fprintf('Error in documentation.\n');
end

flag=0;
for i = 1:length(st)
    tempStr = txtIn((st(i)+1):(ed(i)-1));
    tempStr = arrayfun(@(x) replace(x,"fig2plotly","pf=fig2plotly"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"fig2plotly *\( *\)","fig2plotly(gcf,'writeFile',false,'open',false)"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"fig2plotly *\( *gcf *","fig2plotly(gcf,'writeFile',false,'open',false"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"fig2plotly *\( *fig *","fig2plotly(fig,'writeFile',false,'open',false"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"fig2plotly *\( *'","fig2plotly(gcf,'writeFile',false,'open',false,'"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"^plotly *\( *data *\)","pf=plotly(data,struct('writeFile',false))"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"^plotly *\( *data *, *struct *\(","pf=plotly(data,struct('writeFile',false,"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"p *= *plotlyfig *\( *gcf *","p=plotlyfig(gcf,'writeFile',false,'open',false"), tempStr);
    
    ss = strfind(tempStr,'plotly(','ForceCellOutput',true);
    ss = find(cellfun(@(x) ~isempty(x), ss, 'UniformOutput', true), 1);

    ss2 = strfind(tempStr,'p.plotly','ForceCellOutput',true);
    ss2 = find(cellfun(@(x) ~isempty(x), ss2, 'UniformOutput', true), 1);
    
    if isempty(ss) && ~isempty(ss2)
        insTxt = "json = m2json(struct('data',{p.data},'layout',p.layout,'frames',{p.frames})); fprintf('%s\n',json); close all force;";
    else
        insTxt = "json = m2json(struct('data',{pf.data},'layout',pf.layout,'frames',{pf.frames})); fprintf('%s\n',json); close all force;";
    end
    
    ss=[ss,ss2];
    
    if ~isempty(ss)
        for j = 1:length(ss)
            if j>1
                ss(j)=ss(j)+1;
            end
            if ss(j)==length(tempStr)
                tempStr = [tempStr; insTxt];
            else
                tempStr = [tempStr(1:ss(j)); insTxt; tempStr((ss(j)+1):end)];
            end
        end
    end

    f=fopen('temp.m','wb','ieee-le','UTF-8');
    fwrite(f,join(tempStr,newline), 'char');
    fclose(f);
    if flag>0
        ed(i)=ed(i)+flag;
    end
    json=[];
    res = callFile(~isempty(ss));
    if ~isempty(ss) && ~isempty(res)   % fig2plotly was called.
        [s,e] = regexp(res,' *{"data":[\s\S]+\}+');
        json = strip(res(s:e));
        res(s:e)=[];
    end
    res=strip(res);
    res = regexprep(res,"<a.*>(.*)</a>","$1");
    res=strip(res);
    if ~isempty(res)
        out = [out(1:ed(i)); string(['<pre class="code-output">',newline,native2unicode(res,'UTF-8'),newline,'</pre>']); out((ed(i)+1):end)];
        if ~isempty(json)
            ed(i)=ed(i)+1;
        end
        flag=flag+1;
    end
    if ~isempty(json)
        N=rand*1.e12;
        name=sprintf('plot_%.0f',N);
        out = [out(1:ed(i)); string(['{% capture ',name,' %}',...
            '{% raw %}',json,'{% endraw %}',...
            '{% endcapture %}','{% include posts/ssim_frame.html raw_json_file=',name,...
            ' index=',sprintf('%.0f',N),' %}',newline]); out((ed(i)+1):end)];
        flag=flag+1;
    end
end

end

function res = callFile(isFig)
try
    res = evalc('temp');
catch ME
    sprintf(ME.message)
    if isFig == true
        %jsonErr = loadjson('977.json');
        jsonErr = "To be inmplemented soon"
        res = sprintf('%s\n',jsonencode(jsonErr));
    else
        res = ['<font color="red">...ERROR...<br>',ME.message,'</font>'];
    end
end
end
function mdContents = evalMD()

% Setup Plotly in Offline Mode
% addpath(genpath('D:/Matlab_code/plotly_matlab-master/plotly'));
addpath(genpath('../plotly_matlab/plotly'));

% Let list of md files
fileList = dir('matlab/2021*.md');

% Loop over all files
for i = 1:length(fileList)
    fileName = fullfile(fileList(i).folder,fileList(i).name);
    mdContents = readlines(fileName);
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
    f = fopen(fullfile('tempF',fileList(i).name),'w');
    fwrite(f,mdContents);
    fclose(f);
    close all;
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
    tempStr = arrayfun(@(x) replace(x,"fig2plotly","pf = fig2plotly"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"fig2plotly *\( *\)","fig2plotly(gcf,'writeFile',false,'open',false)"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"fig2plotly *\( *gcf *","fig2plotly(gcf,'writeFile',false,'open',false"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"fig2plotly *\( *'","fig2plotly(gcf,'writeFile',false,'open',false,'"), tempStr);
    tempStr = arrayfun(@(x) regexprep(x,"^plotly *\( *data *\)","pf=plotly(data,struct('writeFile',false))"), tempStr);
    
    tempStr(end+1) = "addpath(genpath('..\plotly_matlab\plotly'));";
    tempStr = circshift(tempStr,1);

    ss = strfind(tempStr,'plotly(','ForceCellOutput',true);
    ss = find(cellfun(@(x) ~isempty(x), ss, 'UniformOutput', true), 1);
    
    tempStr(ss)
    
    insTxt = "json = m2json(struct('data',pf.data,'layout',pf.layout)); fprintf('%s\n',json);";
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

    f=fopen('temp.m','w');
    fwrite(f,join(tempStr,newline));
    fclose(f);
    if flag>0
        ed(i)=ed(i)+flag;
    end
    json=[];
    res = evalc('temp');
    if ~isempty(ss) && ~isempty(res)   % fig2plotly was called.
        [s,e] = regexp(res,' *{"data":[\s\S]+\}+');
        json = strip(res(s:e));
        res(s:e)=[];
    end
    res=strip(res);
    if ~isempty(res)
        out = [out(1:ed(i)); string(['```',newline,res,newline,'```']); out((ed(i)+1):end)];
        if ~isempty(json)
            ed(i)=ed(i)+1;
        end
        flag=flag+1;
    end
    if ~isempty(json)
        N=rand*1.e12;
        name=sprintf('plot_%.0f',N);
        out = [out(1:ed(i)); string(['{% capture ',name,' %}',newline,...
            '{% raw %}',json,'{% endraw %}',newline,...
            '{% endcapture %}',newline,'{% include posts/ssim_frame.html raw_json_file=',name,...
            ' index=',sprintf('%.0f',N),' %}',newline]); out((ed(i)+1):end)];
        flag=flag+1;
    end
end

end
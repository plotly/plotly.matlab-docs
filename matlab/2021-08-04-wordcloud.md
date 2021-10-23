---
description: How to make Wordcloud Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Wordcloud Plot
display_as: basic
order: 19
permalink: matlab/wordcloud/
thumnail_github: wordcloud.png
layout: base
language: matlab
page_type: u-guide
---

## Create Word Cloud from Table

Load the example data `sonnetsTable`. The table `tbl` contains a list of words in the variable `Word`, and the corresponding frequency counts in the variable `Count`.

```{matlab}
load sonnetsTable
head(tbl)
```


Plot the table data using `wordcloud`. Specify the words and corresponding word sizes to be the `Word` and `Count` variables respectively.

```{matlab}
load sonnetsTable

figure
wordcloud(tbl,'Word','Count');
title("Sonnets Word Cloud")

fig2plotly(gcf);
```


<!--------------------- EXAMPLE  BREAK ------------------------->

## Prepare Text Data for Word Clouds

If you have Text Analytics Toolbox™ installed, then you can create word clouds directly from string arrays. For more information, see `wordcloud` (Text Analytics Toolbox) (Text Analytics Toolbox). If you do not have Text Analytics Toolbox, then you must preprocess the text data manually. 

This example shows how to create a word cloud from plain text by reading it into a string array, preprocessing it, and passing it to the `wordcloud` function.

Read the text from Shakespeare's Sonnets with the `fileread` function and convert it to string.

```{matlab}
sonnets = string(fileread('sonnets.txt'));
extractBefore(sonnets,"II")
```


Split `sonnets` into a string array whose elements contain individual words. To do this, remove the punctuation characters and join all the string elements into a 1-by-1 string and then split on the space characters. Then, remove words with fewer than five characters and convert the words to lowercase.

```{matlab}
sonnets = string(fileread('sonnets.txt'));

punctuationCharacters = ["." "?" "!" "," ";" ":"];
sonnets = replace(sonnets,punctuationCharacters," ");
words = split(join(sonnets));
words(strlength(words)<5) = [];
words = lower(words);
words(1:10)
```



Convert `sonnets` to a categorical array and then plot using `wordcloud`. The function plots the unique elements of `C` with sizes corresponding to their frequency counts.

```{matlab}
sonnets = string(fileread('sonnets.txt'));

punctuationCharacters = ["." "?" "!" "," ";" ":"];
sonnets = replace(sonnets,punctuationCharacters," ");
words = split(join(sonnets));
words(strlength(words)<5) = [];
words = lower(words);

C = categorical(words);
figure
wordcloud(C);
title("Sonnets Word Cloud")

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Word Sizes

Create a word cloud from plain text by reading it into a string array, preprocessing it, and passing it to the `wordcloud` function.

Read the text from Shakespeare's Sonnets with the `fileread` function and convert it to string.

```{matlab}
sonnets = string(fileread('sonnets.txt'));
extractBefore(sonnets,"II")
```

Split `sonnets` into a string array whose elements contain individual words. To do this, remove the punctuation characters and join all the string elements into a 1-by-1 string and then split on the space characters. Then, remove words with fewer than five characters and convert the words to lowercase.

```{matlab}
sonnets = string(fileread('sonnets.txt'));

punctuationCharacters = ["." "?" "!" "," ";" ":"];
sonnets = replace(sonnets,punctuationCharacters," ");
words = split(join(sonnets));
words(strlength(words)<5) = [];
words = lower(words);
words(1:10)
```

Find the unique words in `sonnets` and count their frequency. Create a word cloud using the frequency counts as size data.

```{matlab}
sonnets = string(fileread('sonnets.txt'));

punctuationCharacters = ["." "?" "!" "," ";" ":"];
sonnets = replace(sonnets,punctuationCharacters," ");
words = split(join(sonnets));
words(strlength(words)<5) = [];
words = lower(words);

[numOccurrences,uniqueWords] = histcounts(categorical(words));
figure
wordcloud(uniqueWords,numOccurrences);
title("Sonnets Word Cloud")

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Word Colors

Load the example data `sonnetsTable`. The table `tbl` contains a list of words in the `Word` variable, and corresponding frequency counts in the `Count` variable.

```{matlab}
load sonnetsTable
head(tbl)
```


Plot the table data using `wordcloud`. Specify the words and corresponding word sizes to be the `Word` and `Count` variables respectively. To set the word colors to random values, set `'Color'` to a random matrix or RGB triplets with one row for each word.

```{matlab}
load sonnetsTable

numWords = size(tbl,1);
colors = rand(numWords,3);
figure
wordcloud(tbl,'Word','Count','Color',colors);
title("Sonnets Word Cloud")

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Create Word Cloud Using Text Analytics Toolbox

If you have Text Analytics Toolbox installed, then you can create word clouds directly from string
                    arrays. If you do not have Text Analytics Toolbox, then you must preprocess the text data manually. For an example
                    showing how to create a word cloud without Text Analytics Toolbox, see Prepare Text Data for Word Clouds.

Extract the text from `sonnets.txt` using
                            extractFileText`.

```{matlab}
str = extractFileText("sonnets.txt");
extractBefore(str,"II")
```



Display the words from the sonnets in a word cloud.

```{matlab}
str = extractFileText("sonnets.txt");

figure
wordcloud(str);

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->


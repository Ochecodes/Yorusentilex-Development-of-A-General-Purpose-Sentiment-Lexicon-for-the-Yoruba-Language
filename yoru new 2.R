# working on the yoruba dataset
#install.packages(readr)
rm(list=(ls(all=TRUE)))
setwd("~/")
library(NLP)
library(openNLP)
#library(openNLPmodels.en)
library(qdap) # provides parsing tools that enable analysis and visualization of text
library(base64enc)

# Begin Here 

#Load Libraries
library("openssl")
library("httpuv")
library("tm")
library("stringr")
library(plyr)
library("dplyr")
library(stringi)
library(readr)
library(tidyverse)
library(qdap)
library(readr)

# Import text data
YorubaNews <- read_csv("C:/Users/Ben/Desktop/YORUSENTILEX/YorubaNews.csv")
#Overview of YorubaNews Data 
head(YorubaNews)
tail(YorubaNews)
str(YorubaNews)

# Clean text to remove odd characters
YorubaNews <- sapply(YorubaNews,function(row) iconv(row, "latin1", "ASCII", sub=""))

# Remove punctuation
removePunctuation(YorubaNews)

# Remove numbers
removeNumbers(YorubaNews)

# Remove whitespace
stripWhitespace(YorubaNews)

# Remove text within brackets
bracketX(YorubaNews)

# Replace numbers with words
replace_number(YorubaNews)

# Replace abbreviations
replace_abbreviation(YorubaNews)

# Replace contractions
replace_contraction(YorubaNews)

# Replace symbols with words
replace_symbol(YorubaNews)

# Print text without standard stop words
removeWords(YorubaNews, stopwords("en"))

YorubaNews = gsub("(RT|via)((?:\\b\\W*@\\w+)+)", "", YorubaNews)
YorubaNews = gsub("[[:punct:]]", "", YorubaNews)
YorubaNews = gsub("[[:digit:]]", "", YorubaNews)
YorubaNews = gsub("http\\w+", "", YorubaNews)
YorubaNews = gsub("[ \t]{2,}", "", YorubaNews)
YorubaNews = gsub("^\\s+|\\s+$", "", YorubaNews)

#check if vector is atomic
is.atomic(YorubaNews)

frequent_terms <- freq_terms(YorubaNews, 30)
plot(frequent_terms)

# Reading the dictionary of Positive and Negative words (obtain this by online search)
pos.words=scan("C:/Users/Ben/Desktop/YORUSENTILEX/LUIS POSITIVE WORDS IN YORUBA.txt",what='character',comment.char=';')
neg.words=scan("C:/Users/Ben/Desktop/YORUSENTILEX/LUIS NAGATIVE WORDS IN YORUBA.txt",what='character',comment.char=';')

# function to calculate the sentiment score
score.sentiment = function(YorubaNews, pos.words, neg.words, .progress='none')
{
  scores = laply(YorubaNews, function(YorubaNews, pos.words, neg.words) {
    YorubaNews = gsub('[[:punct:]]', '', YorubaNews)
    YorubaNews = gsub('[[:cntrl:]]', '', YorubaNews)
    YorubaNews = gsub('\\d+', '', YorubaNews)
    YorubaNews = tolower(YorubaNews)
    word.list = str_split(YorubaNews, '\\s+')
    words = unlist(word.list)
    pos.matches = match(words, pos.words)
    neg.matches = match(words, neg.words)
    pos.matches = !is.na(pos.matches)
    neg.matches = !is.na(neg.matches)
    score = sum(pos.matches) - sum(neg.matches)
    return(score)
  }, pos.words, neg.words, .progress=.progress )
  
  scores.df = data.frame(score=scores)
  return(scores.df)
}

# Calculating the sentiment scores
scores = score.sentiment(YorubaNews, pos.words,neg.words, .progress='text')
table(scores$score)
#install.packages("sqldf")
library(ggplot2)
library(sqldf)
table <- sqldf("select score, count(*) from scores group by score")
colnames(table) = c("score", "frequency")
hist(table$frequency)
ggplot(table, aes(score, frequency))  + geom_bar(stat="identity") 


# Codes Yorusentilex: Development of a general Purpose sentiment Lexicon in Yoruba 
#by Oche Akor at #FULokojaCSCPRJ2022 

# Install the below packages
#install.packages("twitteR")
#install.packages("base64enc")
#install.packages("openNLPmodels.en",repos = "http://datacube.wu.ac.at/",type = "source")
#install.packages("bit")
#install.packages("qdap")

# Steps
# 1. Load the required packages.
# 2. Read the dataset
# 3. Clean the dataset 
     #Remove Odd Characters 
     #Remove Punctuations
     #Remove Numbers 
     #Remove Whitespeces 
     # Remove text within brackets
     # Replace numbers with words
     # Replace abbreviations
     # Replace contractions
     # Replace symbols with words
#4. Read stop words and remove them from the data set
#5. Read the files of positive and negative words in R
#6. match the words in the text with those of positive and negative words list
#7. Calculate the sentiment score for the data set 
#8. Suppose 10 positive words match in the text and 6 negative words match then 
    # the score for that record = 10-6 
#9. Visualize the Result
#10. Repeat the process for Data set in Yoruba

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

# Import text data
NewsHeadlinesEng <- read_csv("C:/Users/Ben/Desktop/Yorusentilex_EngDataset.csv")

# Clean text to remove odd characters
NewsHeadlinesEng <- sapply(NewsHeadlinesEng,function(row) iconv(row, "latin1", "ASCII", sub=""))

# Remove punctuation
removePunctuation(NewsHeadlinesEng)

# Remove numbers
removeNumbers(NewsHeadlinesEng)

# Remove whitespace
stripWhitespace(NewsHeadlinesEng)

# Remove text within brackets
bracketX(NewsHeadlinesEng)

# Replace numbers with words
replace_number(NewsHeadlinesEng)

# Replace abbreviations
replace_abbreviation(NewsHeadlinesEng)

# Replace contractions
replace_contraction(NewsHeadlinesEng)

# Replace symbols with words
replace_symbol(NewsHeadlinesEng)

# List standard English stop words
stopwords("en")

# Print text without standard stop words
removeWords(NewsHeadlinesEng, stopwords("en"))

frequent_terms <- freq_terms(NewsHeadlinesEng, 30)
plot(frequent_terms)

#check if vector is atomic
is.atomic(NewsHeadlinesEng)

# For text processing, create the corpus of tweets

# Reading the dictionary of Positive and Negative words (obtain this by online search)
pos.words=scan("C:/Users/Ben/Documents/r_works/positive-words.txt",what='character',comment.char=';')
neg.words=scan("C:/Users/Ben/Documents/r_works/negative-words.txt",what='character',comment.char=';')

# function to calculate the sentiment score
score.sentiment = function(NewsHeadlinesEng, pos.words, neg.words, .progress='none')
{
  scores = laply(NewsHeadlinesEng, function(NewsHeadlinesEng, pos.words, neg.words) {
    NewsHeadlinesEng = gsub('[[:punct:]]', '', NewsHeadlinesEng)
    NewsHeadlinesEng = gsub('[[:cntrl:]]', '', NewsHeadlinesEng)
    NewsHeadlinesEng = gsub('\\d+', '', NewsHeadlinesEng)
    NewsHeadlinesEng = tolower(NewsHeadlinesEng)
    word.list = str_split(NewsHeadlinesEng, '\\s+')
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
scores = score.sentiment(NewsHeadlinesEng, pos.words,neg.words, .progress='text')
table(scores$score)
#install.packages("sqldf")
library(ggplot2)
library(sqldf)
table <- sqldf("select score, count(*) from scores group by score")
colnames(table) = c("score", "frequency")
hist(table$frequency)
ggplot(table, aes(score, frequency))  + geom_bar(stat="identity")

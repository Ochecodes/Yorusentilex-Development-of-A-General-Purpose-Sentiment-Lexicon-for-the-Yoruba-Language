# Yorusentilex-Development-of-a-General-Purpose-Sentiment-Lexicon-for-the-Yoruba-language

## [COPYRIGHT: this is an original Research work by Akor Emmanuel Oche. This work should not be copied, duplicated. plagiarized  or distributed in any format electronic or otherwise without prior permission by the author. for enquiries and requests email ochebooks@gmail.com]

# INTRODUCTION 
There are General Purpose Sentiment Lexicons available in High resource languages, but few exist in African Languages making it difficult to directly carry out Natural Language Processing on documents written in such languages. The aim of this Research is to develop a General Purpose Sentiment lexicon for the Yoruba Language for use in carrying out sentiment analysis and opinion mining research on texts available in Yoruba. I Collected and Translated Lui Lexicon into Yoruba and used the new lexicon to carry out sentiment analysis on text dataset scrapped from BBC Yoruba News Website. The sentiment scores were collected in a table and visualized. The performance of the new lexicon was compared with sentiment scores obtained from analysis using Lui lexicon on the dataset in English. 

## Problem Statement 
Sentiment analysis research has made significant advancements, mostly focusing on Rich-Resource Languages like English, German, and Arabic. However, research on many Low Resource Languages is scanty. There are General Purpose Sentiment Lexicons available in High resource languages, but few exist in African Languages making it difficult to directly carry out Natural Language Processing on documents written in such languages.

## Aim and Objectives of the Study 
The aim of this project is to develop a General Purpose Sentiment lexicon for the Yoruba Language for use in carrying out sentiment analysis and opinion mining research on texts available in Yoruba.

The objectives of this project are as follows:
Collect, study and translate Liu’s lexicon into Yoruba and manually increase the catalogue by adding new words.
Develop a General Purpose Sentiment lexicon in Yoruba that can be used to directly carry out Natural Language Processing in that language without first translating it to English.
Test the performance of the lexicon with others using text scrapped from BBC Yoruba Website.

## Significance of Study 
The Yoruba language is spoken by 50 million native speakers, plus 2 million second language speakers and is one of the most widely spoken languages along the Atlantic-Congo region of Africa. It is a widely translated language with many texts produced in it. However, opinion mining and data science activities cannot be carried out on text written in this language. Because the usage of annotated lexicons is critical in opinion mining, there has been substantial study on the construction of general purpose lexicons. Sentiment lexicons are important building blocks for a wide range of applications. and this contribution for Yoruba will aid in the language's technological development. Sentences gleaned from Yoruba original literature could be valuable in security, disaster relief, document classification, and other areas. This research will be used to inspire lexicon translation for other low-resource languages in Nigeria, as well as to build computational NLP tasks based on the results.

## MODEL DESIGN 
(Source: Khan, et al (2015)

![image](https://user-images.githubusercontent.com/58173677/210937109-c5662d5e-79e9-485b-8ab9-67241c9f0d97.png)

# IMPLIMENTATION 
## METHODOLOGY 
I employed the use of the lexicon based approach in this project, it depends on an external dictionary which in this case is a manually generated lexicon in yoruba based on a translation of Bing Lui lexicon into Yoruba. The aim is to test this new lexicon over news headlines scrapped from BBC Yoruba news channel. The semantics will be extracted from the texts in the dataset in a tokenization process, the dataset is then cleaned to remove unwanted characters. stopwords are removed from the dataset, stemming and lemmatization is carried out. the cleaned dataset is loaded into a data frame and used to form a corpus. This is known as bag of words. The translated lexicon is loaded into the system, and used to carry out sentiment analysis on the corpus. The score is recorded and visualized. the result is compared to similar process ran on the dataset using an established lexicon in a high level language. 

![image](https://user-images.githubusercontent.com/58173677/210937567-4f03f0fc-7ea0-4c06-948c-2bb7baa58b5a.png)

## Implimentation in R

![image](https://user-images.githubusercontent.com/58173677/210937626-7abe635a-a330-45ef-8cd3-709df0508ba5.png)

## Workflow
The project plan begins with the collection of luis lexicon, then we translate this into yoruba using google translate. The output is then split to its various polarities, positive, nagative and neutral. A survey form will be used to expand each of this catalouge. The resulting lexicon will then be modeled and tested using text Scrapped from BBC house website. 

![image](https://user-images.githubusercontent.com/58173677/210937851-5637c616-2720-4c2f-a61f-f577433bb143.png)

## Logical Design-Data Flow Diagram 
(Source: CFD-DEM-coupling_fig6_273383769 [accessed 16 Dec, 2022] )

![image](https://user-images.githubusercontent.com/58173677/210938208-4e5596f1-7a68-4d22-acfb-0bae2f31431c.png)

## Algorithm 
Step 1. Create the new lexicon on google translate and save as a CSV file 
Step 2. Curate your dataset from BBC Yoruba website 
Step 3. Import necessary libraries on your R-Studio environment 
Step 4. Read the dataset in CSV format using pandas 
Step 5. Explore the dataset to see what the data holds 
Step 6. Clean the dataset 
Step 7. Tokenize the dataset 
Step 8. Lemmatize the dataset and remove stop words 
Step 9. Use the Natural Language Processing Toolkit NLTK to import the lexicon and test on the dataset 
Step 10. Carry out sentiment analysis on the dataset using the imported lexicon 
Step 11. Using different machine learning algorithms to evaluate the performance of the system. 

## Dataset
Yorusentilex is new lexicon for carrying out sentiment analysis tasks on texts available in the Yoruba language. The design involves the collection, curating and exploration of various categories of data. First an already available lexicon, luis lexicon, is collected. It contains a list of positive and negative categorized words in English. It was collected in txt format then translated into Yoruba using google translate. The second set of data are news headlines scrapped from BBC Yoruba website using Power BI. The dataset is in both Yoruba and English.

# SYSTEM REQUIREMENTS  
These are the requirements needed on the device of the end user to efficiently use a system and also those needed by anyone who wishes to replicate the steps employed in building this system. For this project, the system requirements are as follows:

## Minimum Hardware Requirement 
i.	an electronic device e.g computer system running an anaconda kernel 
ii.	processor: an intel Pentium with a processing speed of 1.60GHz or higher 
iii.	Memory: 4GB Ram or higher 
iv.	Disk Space: 2GB or higher 

## Software Requirements 
i.	Windows/linux/iOS operating systems 
ii.	R-Studio IDE.
iii.	Sound knowledge of the python programming language 
iv.	Google translate 
v.	Microsoft excel 
vi.	Notepad++
vii.	Google colab 
viii.	A good web browser 
ix.	Natural language processing toolkit 
x.	Power BI 

## Implementation Tools used 
The following tools were used to execute this project 

i.	 R-programming language 
ii.	R Studio
iii.	Google colab 
iv.	Google translate 
v.	Microsoft excel 

## Psuedocode 
1. Reading the dataset
The Data set is read into the system using Readr, an R-Studio library

2.	Importing Libraries for Data Cleaning
After importing, the dataset is cleaned 

3.	Tokenization
The dataset is tokenized before several other natural language processes are carried out on the tokenized dataset. These include, stop word removal, Stemming, Lemmatization, bag of words and POS tagging

4.	Importing the lexicon 
We use a scan function in R to read the lexicon into the system 

5.	Sentiment analysis
Sentiment analysis was carried out on the dataset and sentiment scores were calculated for positive, negative and neutral on the relevant dataset and the polarity scores are recorded into a table.

# RESULTS
Sentiment Scores 

Sentiment Score for Lui’s lexicon on news headlines in English 
table(scores$score)
## 
## -3 -2 -1  0  1  2  3 
##  1  8 43 92 64 14  4

Sentiment Score for Yorusentilex on news headlines in yoruba 
table(scores$score)
## 
## -5 -3 -2 -1  0  1  2  3  4  5  6  7  8 10 
##  1  1 14 27 43 42 33 29 15  5  7  4  3  1

## Vizualization
The result is visualized to see how both lexicons perform in relation to each other. 

![image](https://user-images.githubusercontent.com/58173677/210939665-e3a95a73-2918-4e98-9dfe-965bc4be3094.png)

![image](https://user-images.githubusercontent.com/58173677/210939947-f5969367-7ae2-4741-9549-6aadff437e24.png)

![image](https://user-images.githubusercontent.com/58173677/210939992-f24c5431-0107-4fd4-82d4-986908fa1a66.png)

![image](https://user-images.githubusercontent.com/58173677/210940051-2b3a8851-2697-4c6d-a7d6-3d0ca1d45ef0.png)

![image](https://user-images.githubusercontent.com/58173677/210940070-02ae4000-f768-4e2e-97cf-86ebde6ff5bd.png)

![image](https://user-images.githubusercontent.com/58173677/210940108-ef7fab9f-f21a-48ee-8fa3-8929eee1fcd4.png)

![image](https://user-images.githubusercontent.com/58173677/210940177-bf616647-7683-4785-a4f2-7d709b1de176.png)

![image](https://user-images.githubusercontent.com/58173677/210940216-a08b0772-0a36-4d21-90dc-ce5c98c7425d.png)

![image](https://user-images.githubusercontent.com/58173677/210940338-389905d0-4d8f-44f7-9df5-110278737b61.png)

## System Testing 
To test the system, examine the accuracy of the lexicon in comparison to Bing Lui lexicon in english, as well as calculate the polarity agreement of the sentiment analysis carried out using both lexicons.

# CONCLUSION
## Review of Contributions and Achievements 
The key accomplishment of this research is that it provides natural language processing engineers with a new lexicon that they can employ in carrying out natural language processing tasks on texts available in the Yoruba language without first going through such lexicons in other high resource languages. 

## Recommendation 
The main recommendation is for machine learning engineers in countries with diverse languages like Nigeria to key into research that will enhance the inclusivity of African languages into current technological trends as we currently suffer from a global language decline, the future of such languages will be in the field of natural language processing and artificial intelligence if they are to survive extinction. 

## Suggested Areas for future research 
Continued study in this field should be aimed at improving the accuracy of the lexicon based on whatever model is used to calculate its performance. There should also be more research into ways lexicons such as this can be used to create more language specific machine learning models. 

# References 
Abdul-Mageed, M. &. (2012). Toward building a large-scale Arabic sentiment lexicon. . Proceedings of the 6th international global WordNet conference , 18-22.

Asghar, M. Z. (2016). SentiHealth: creating health-related sentiment lexicon using hybrid approach. SpringerPlus, 5(1), 1-23.
Ahmad, M., Aftab, S., Muhammad, S. S., & Ahmad, S. (2017). Machine learning techniques for 
sentiment analysis: A review. Int. J. Multidiscip. Sci. Eng, 8(3), 27.

Alantari, H. J., Currim, I. S., Deng, Y., & Singh, S. (2022). An empirical comparison of machine learning methods for
text-based sentiment analysis of online consumer reviews. International Journal of Research in Marketing, 39(1), 1-19.

AlBadani, B., Shi, R., & Dong, J. (2022). A novel machine learning approach for sentiment analysis on Twitter
incorporating the universal language model fine-tuning and SVM. Applied System Innovation, 5(1), 13.

Abdelgwad, M. M., Soliman, T. H. A., Taloba, A. I., & Farghaly, M. F. (2022). Arabic aspect based sentiment
analysis using bidirectional GRU based models. Journal of King Saud University-Computer and Information Sciences, 34(9), 6652-6662.

Abdelgwad, M. M., Soliman, T. H. A., Taloba, A. I., & Farghaly, M. F. (2022). Arabic aspect based sentiment
analysis using bidirectional GRU based models. Journal of King Saud University-Computer and Information Sciences, 34(9), 6652-6662.

Amina Imam Abubakar and Abubakar Roko and A. B. Muhammad and Ibrahim Saidu (2019) Hausa
WordNet: An Electronic Lexical Resource. Inproceedings (Abubakar2019HausaWA)

Bosch, Sonja & Griesel, Marissa. (2020). Exploring the Documentation and Preservation of African
Indigenous Knowledge in a Digital Lexical Database. Lexikos. 30. 10.5788/30-1-1603.

Basiri, M. E., & Kabiri, A. (2017, October). Translation is not enough: comparing lexicon-based methods for sentiment
analysis in Persian. In 2017 International Symposium on Computer Science and Software Engineering Conference (CSSE) (pp. 36-41). IEEE.

Boukabous, M., & Azizi, M. (2022). Crime prediction using a hybrid sentiment analysis approach based on
the bidirectional encoder representations from transformers. Indones. J. Electr. Eng. Comput. Sci., 25(2), 1131-1139.

Catelli, R., Pelosi, S., & Esposito, M. (2022). Lexicon-based vs. Bert-based sentiment analysis: 
A comparative study in Italian. Electronics, 11(3), 374.

Do, H. H., Prasad, P. W. C., Maag, A., & Alsadoon, A. (2019). Deep learning for aspect-based sentiment analysis: a
comparative review. Expert systems with applications, 118, 272-299.

Fahrni, A., & Klenner, M. (2008, 01 April 2008 - 02 April 2008). Old wine or warm beer: target-specific sentiment analysis of adjectives . Symposium on Affective Language in Human and Machine, AISB 2008 Convention, 60-63.

Ghallab, A., Mohsen, A., & Ali, Y. (2020). Arabic sentiment analysis: A systematic literature review. Applied
Computational Intelligence and Soft Computing, 2020.

Govindarajan, M., & Romina, M. (2013). A survey of classification methods and applications for sentiment
analysis. The International Journal Of Engineering And Science (IJES), 2(12), 11-15.


Han, H. Z. (2018). Generate domain-specific sentiment lexicon for review sentiment analysis. Multimedia Tools and Applications, 77(16), 21265-21280.

Ìyàndá, A.R., & Abegunde, O. (2019). Predicting Sentiment in Yorùbá Written Texts: A Comparison of Machine Learning Models. IntelliSys.

Jiang, Q., Chen, L., Xu, R., Ao, X., & Yang, M. (2019, November). A challenge dataset and effective models for aspect
based sentiment analysis. In Proceedings of the 2019 Conference on Empirical Methods in Natural Language Processing and the 9th International Joint Conference on Natural Language Processing (EMNLP-IJCNLP) (pp. 6280-6285).

Jiang, W., Zhou, K., Xiong, C., Du, G., Ou, C., & Zhang, J. (2022). KSCB: a novel unsupervised method for
text sentiment analysis. Applied Intelligence, 1-11.

Kaur, R., & Kautish, S. (2022). Multimodal sentiment analysis: A survey and comparison. Research Anthology
on Implementing Sentiment Analysis Across Multiple Disciplines, 1846-1870.

Kaur, D. (2022). Incorporating sentimental analysis into development of a hybrid classification model: 
A comprehensive study. International Journal of Health Sciences, 6, 1709-1720.

Koto, Fajri & Rahmaningtyas, Gemala. (2017). InSet Lexicon: Evaluation of a Word List for Indonesian
Sentiment Analysis in Microblogs. 10.1109/IALP.2017.8300625.

Khan, Farhan & Qamar, Usman & Bashir, Saba. (2015). SentiMI: Introducing Point-wise Mutual Information
with SentiWordNet to Improve Sentiment Polarity Detection. Applied Soft Computing. 39. 10.1016/j.asoc.2015.11.016.
Li, H., Chen, Q., Zhong, Z., Gong, R., & Han, G. (2022). E-word of mouth sentiment analysis for user behavior
studies. Information Processing & Management, 59(1), 102784.

Liu, X., Tang, T., & Ding, N. (2022). Social network sentiment classification method combined Chinese text
syntax with graph convolutional neural network. Egyptian Informatics Journal, 23(1), 1-12.

Mowlaei, M. E., Abadeh, M. S., & Keshavarz, H. (2020). Aspect-based sentiment analysis using adaptive aspect-based
lexicons. Expert Systems with Applications, 148, 113234.

Mehta, P., & Pandya, S. (2020). A review on sentiment analysis methodologies, practices and
applications. International Journal of Scientific and Technology Research, 9(2), 601-609.

Neshan, S. A. S., & Akbari, R. (2020, April). A combination of machine learning and lexicon based techniques
for sentiment analysis. In 2020 6th International Conference on Web Research (ICWR) (pp. 8-14). IEEE.

Nazir, A., Rao, Y., Wu, L., & Sun, L. (2020). Issues and challenges of aspect-based sentiment analysis: #
a comprehensive survey. IEEE Transactions on Affective Computing.

Okango, E., & Mwambi, H. (2022). Dictionary based global twitter sentiment analysis of coronavirus
(COVID-19) effects and response. Annals of Data Science, 9(1), 175-186.

Pontiki, M., Galanis, D., Papageorgiou, H., Androutsopoulos, I., Manandhar, S., Al-Smadi, M., ... & Eryiğit, G. (2016, 
January). Semeval-2016 task 5: Aspect based sentiment analysis. In International workshop on semantic evaluation (pp. 19-30).

Phan, M. H., & Ogunbona, P. O. (2020, July). Modelling context and syntactical features for aspect-based sentiment
analysis. In Proceedings of the 58th annual meeting of the association for computational linguistics (pp. 3211-3220).

Pavlopoulos, I. (2014). Aspect based sentiment analysis. Athens University of Economics and Business.

Ruder, S., Ghaffari, P., & Breslin, J. G. (2016). A hierarchical model of reviews for aspect-based sentiment
analysis. arXiv preprint arXiv:1609.02745.

Song, M. P. (2019). Attention-based long short-term memory network using sentiment lexicon embedding for aspect-level sentiment analysis in Korean. Information Processing & Management, 56(3), 637-653.

Shivaprasad, T. K., & Shetty, J. (2017, March). Sentiment analysis of product reviews: a review. In 2017
International conference on inventive communication and computational technologies (ICICCT) (pp. 298-301). IEEE.

Sallam, R. M., Hussein, M., & Mousa, H. M. (2022). Improving collaborative filtering using lexicon-based
sentiment analysis. International Journal of Electrical and Computer Engineering, 12(2), 1744.
Tang, D. W. (2014, August). Building large-scale twitter-specific sentiment lexicon: A representation learning approach. In Proceedings of coling 2014, the 25th international confrence on computational linguistics: Technical papers, 172-182.

Thet, T. T., Na, J. C., & Khoo, C. S. (2010). Aspect-based sentiment analysis of movie reviews on discussion
boards. Journal of information science, 36(6), 823-848.

Taboada, Maite & Brooke, Julian & Tofiloski, Milan & Voll, Kimberly & Stede, Manfred. (2011). Lexicon-Based Methods for Sentiment Analysis. Computational Linguistics. 37. 267-307. 10.1162/COLI_a_00049.


Valle-Cruz, D., Fernandez-Cortez, V., López-Chau, A., & Sandoval-Almazán, R. (2022). Does twitter affect
stock market decisions? financial sentiment analysis during pandemics: A comparative study of the h1n1 and the covid-19 periods. Cognitive computation, 14(1), 372-387.

Veselovská, K. (2013). Czech Subjectivity Lexicon : A Lexical Resource for Czech Polarity Classification.

Wang, L. &. (2017, September ). Sentiment lexicon construction with representation learning based on hierarchical sentiment supervision. In Proceedings of the 2017 conference on empirical methods in natural language processing. 502-510.

Wankhade, M., Rao, A. C. S., & Kulkarni, C. (2022). A survey on sentiment analysis methods, applications,
and challenges. Artificial Intelligence Review, 1-50.

Xu, H., Liu, B., Shu, L., & Yu, P. S. (2019). BERT post-training for review reading comprehension and aspect
based sentiment analysis. arXiv preprint arXiv:1904.02232.


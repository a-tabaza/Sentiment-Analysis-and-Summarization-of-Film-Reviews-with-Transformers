# sentiment analysis || sources: https://www.r-bloggers.com/2021/05/sentiment-analysis-in-r-3/

#load data
data <- read.csv("C:/Users/User/Desktop/ichi the killer sentiment analysis/ichi_the_killer_imdb_reviews.csv", header = T)


# build corpus
library(tm)
corpus <- iconv(data$Review)
corpus <- Corpus(VectorSource(corpus))
inspect(corpus[1:5])

# clean text
corpus <- tm_map(corpus, tolower)
inspect(corpus[1:5])
corpus <- tm_map(corpus, removePunctuation)
inspect(corpus[1:5])
corpus <- tm_map(corpus, removeNumbers)
inspect(corpus[1:5])
cleanset <- tm_map(corpus, removeWords, stopwords('english'))
inspect(cleanset[1:5])


cleanset <- tm_map(cleanset, removeWords, c('ichi', 'film', 'movie','movies', 'killer', 'miikes','miike'))


# cleanset <- tm_map(cleanset, stemDocument)
inspect(cleanset[1:5])

# term document matrix
tdm <- TermDocumentMatrix(cleanset)
tdm <- as.matrix(tdm)
tdm[1:10, 1:20]


# bar plot
w <- rowSums(tdm)
w <- subset(w, w>=25)
barplot(w,
        las = 2,
        col = rainbow(50))

# word cloud
library(wordcloud)
w <- sort(rowSums(tdm), decreasing = TRUE)
set.seed(222)
wordcloud(words = names(w),
          freq = w,
          max.words = 150,
          random.order = F,
          min.freq = 5,
          colors = brewer.pal(8, 'Dark2'),
          scale = c(5, 0.3),
          rot.per = 0.7)

library(wordcloud2)
w <- data.frame(names(w), w)
colnames(w) <- c('word', 'freq')
wordcloud2(w,
           size = 0.7,
           shape = 'triangle',
           rotateRatio = 0.5,
           minSize = 1)

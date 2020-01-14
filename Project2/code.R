file.choose()
folder<-"C:\\Users\\cbz\\Documents\\PROJECT\\corpus"
filelist<-list.files(path=folder)
paste(folder,"\\", filelist)
paste(folder,"\\", filelist,sep = "")
filelist<-paste(folder, "\\", filelist, sep = "")
lapply(filelist,FUN=readLines)
a<-lapply(filelist,FUN=readLines)
lapply(a, FUN=paste, collapse =" ")
corpus<-lapply(a, FUN=paste, collapse =" ")
gsub(pattern="\\W",replace=" ", corpus)
corpus2<-gsub(pattern="\\W",replace=" ", corpus)
corpus2<-gsub(pattern="\\d",replace=" ", corpus2)
corpus2<-tolower(corpus2)
removeWords(corpus2, stopwords("english"))
removeWords(corpus2, stopwords())
corpus2<-gsub(pattern="\\b[A-z]\\b{1}",replace=" ", corpus2)
stripWhitespace(corpus2)
corpus2<-stripWhitespace(corpus2)
wordcloud(corpus2)
if(!require(tm)){
  install.packages("tm")
  library(tm)
}
if(!require(wordcloud)){
  install.packages("wordcloud")
  library(wordcloud)
}
if(!require(stringr)){
    nstall.packages("stringr")
    library(stringr)
   }
corpus3<-Corpus(VectorSource(corpus2))
tdm<-TermDocumentMatrix(corpus3)
m<-as.matrix(tdm)
colnames(m)<- c("lio10","cr7")
x11()
wordcloud(corpus2,min.freq = 1, random.order=FALSE,scale=c(3,0.5), color=rainbow(3))
x11()
comparison.cloud(m)
wordbag<-str_split(corpus2, pattern="\\s+")
wordbag

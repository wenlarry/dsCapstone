
##Codes from text2vec and GloveWordEmbeddings 
##Continue from codes in capstone milestone

it<-itoken(tokens) 

vocab<-create_vocabulary(it,stopwords=swsw)

pvocab=prune_vocabulary(vocab,term_count_min=5L)

it<-itoken(tokens)

cooccurence_vectorizer<-vocab_vectorizer(pvocab,grow_dtm = FALSE,
                                         skip_grams_window=5L)

tcm<-create_tcm(it,cooccurence_vectorizer)

glove=GlobalVectors$new(word_vectors_size=50, vocabulary=vocab,x_max=10) 

glove$fit(tcm, n_iter=20)

word_vectors<-glove$get_word_vectors() 

rm(blogSample, newsSample, twitterSample)
rm(pvocab, vocab)

## QUIZ
die<-word_vectors["eat",,drop=FALSE]-
        word_vectors["give",,drop=FALSE]   -
        word_vectors["sleep",, drop=FALSE] -
        word_vectors["live",, drop= FALSE]

cos_sim=sim2(x=word_vectors,y=die,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10) 
# die

movies<-word_vectors["almost",,drop=FALSE]+
        word_vectors["all",,drop=FALSE]   +
        word_vectors["of",, drop=FALSE] +
        word_vectors["movies",, drop=FALSE]

cos_sim=sim2(x=word_vectors,y=movies,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10) 
#movies

weekend<-word_vectors["month",,drop=FALSE]-
        word_vectors["arctic",, drop=FALSE] +
        word_vectors["monkeys",, drop=FALSE]+
        word_vectors["see",, drop=FALSE]

cos_sim=sim2(x=word_vectors,y=weekend,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10)   
# weekend

outside<-word_vectors["weekly",, drop=FALSE] -
        word_vectors["bruises",, drop= FALSE]+
        word_vectors["from",,drop=FALSE]+
        word_vectors["playing",,   drop=FALSE]

cos_sim=sim2(x=word_vectors,y=outside,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10) 
# outside

top<-word_vectors["middle",,drop=FALSE]   -
        word_vectors["perfect",,drop=FALSE]+
        word_vectors["from",, drop=FALSE] +
        word_vectors["bottom",, drop= FALSE]

cos_sim=sim2(x=word_vectors,y=top,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10) 
# top

picture<-word_vectors["minute",, drop=FALSE] -
        word_vectors["not",, drop=FALSE]+
        word_vectors["time",,drop=FALSE]+ 
        word_vectors["take",, drop= FALSE]

cos_sim=sim2(x=word_vectors,y=picture,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10) 
# picture

matter<-word_vectors["incident",,drop=FALSE]-
        word_vectors["evidence",,drop=FALSE]   +
        word_vectors["jury",, drop=FALSE] +
        word_vectors["settle",, drop= FALSE]

cos_sim=sim2(x=word_vectors,y=matter,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10) 
# matter

marital<-word_vectors["horticultural",,drop=FALSE]-
        word_vectors["dessert",,drop=FALSE]   +
        word_vectors["started",, drop=FALSE] +
        word_vectors["telling",, drop= FALSE]

cos_sim=sim2(x=word_vectors,y=marital,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10) 
# marital

stress<-word_vectors["hunger",,drop=FALSE]-
        word_vectors["happiness",,drop=FALSE]-
        word_vectors["sleepiness",, drop=FALSE] -
        word_vectors["reduce",, drop= FALSE]

cos_sim=sim2(x=word_vectors,y=stress,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10) 

#stress

hand<-word_vectors["finger",,drop=FALSE]-
        word_vectors["bags",,drop=FALSE]+
        word_vectors["groceries",, drop=FALSE] +
        word_vectors["each",, drop= FALSE]

cos_sim=sim2(x=word_vectors,y=hand,method="cosine",norm="l2")
head(sort(cos_sim[,1],decreasing =TRUE),10) 

#hand

#10 correct
rm(arm,finger, hand, happiness, hunger, sleepiness, stress, toe) 









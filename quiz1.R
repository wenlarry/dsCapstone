
#Q1
file.info("en_US.blogs.txt")$size/1024/2
#102617.2

#Q2
twitter<-readLines("en_US.twitter.txt")
length(twitter) 
#2360148

#Q3
max(nchar(twitter)) 
#140
blogs<-readLines("en_US.blogs.txt") 
max(nchar(blogs)) 
#40833
news<-readLines("en_US.news.txt") 
max(nchar(news) )
#11384

#Q4
love<-sum(grepl("love",twitter)) 
hate<-sum(grepl("hate",twitter))
love_count/hate_count
#4.108592

#Q5
biostats<-grep("biostats",twitter)
twitter[biostats] 

# I know how you feel..i have biostats on tuesday and i have yet to 
#study=/"

#Q6

sum(grepl("A computer once beat me at chess, but it was no match for me at kickboxing", twitter))







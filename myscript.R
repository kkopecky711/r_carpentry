cats <- data.frame(coat=c("calico", "black", "tabby"), weight=c(2.1, 3.4, 5.6), likes_string=c(1,0,1))
write.csv(x=cats, file = "data/feline.csv", row.names = FALSE)
cats<-read.csv(file = "data/feline.csv")
cats$weight
cats$coat
# weight is too light
cats$weight+2
paste("my cat is", cats$coat)
cats$coat+cats$weight
typeof(cats$weight)
typeof(cats$coat)
typeof(x)
typeof("A")
file.show("data/feline2.csv")
cats<-read.csv(file = "data/feline2.csv")
str(cats$coat)
my_vector<-vector(length = 3)
my_vector
another_vector<-vector(mode = 'character', length = 3)
another_vector
str(another_vector)
str(cats$weight)
combine_vector<-c(2,6,3)
combine_vector
quiz_vector<-c(2,6,"3")
quiz_vector
character_vector<-c('2', '4', '6')
character_vector
character_coerce_to_number <- as.numeric(character_vector)
character_coerce_to_number
character_coerce_to_logic<-as.logical(character_vector)
character_coerce_to_logic
cats$likes_string
cats$likes_string_logical<-as.logical(cats$likes_string)
cats$likes_string_logical
ab_vector<-c("a", "b")
ab_vector
combine_example<-c(ab_vector, "swc")
combine_example
mySeries<-1:10
mySeries
seq(10)
seq(1,10, by=.1)
vector2<-seq(10)
head(vector2, n=4)
tail(vector2, n=6)
length(vector2)
class(vector2)
typeof(vector2)
myexample<-5:8
myexample
names(myexample)<-c("a", "b", "c", "d")
myexample
age <- c(2,3,5,4)
cats <- cbind(cats, age)
cats
cats$coat <- as.character(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))
str(cats)
cats
cats<-read.csv(file = "data/feline.csv")
cats
age <- c(2,3,5)
age
cats <- cbind(cats, age)
cats
newRow <- list("tortoiseshell", 3.3, TRUE, 9)
newRow
cats <- rbind(cats, newRow)
cats
levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
cats
levels(cats$coat)
cats
cats$coat <- as.character(cats$coat)
str(cats)
human_age <- cats$age*7
human_age <- as.character(human_age)
human_age <- as.factor(human_age)
human_age



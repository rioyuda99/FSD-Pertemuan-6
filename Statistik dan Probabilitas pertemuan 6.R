### Statistika

dataCredit <- Credit
Credit

## 1.COmpute the mean and the median of Rating,Cards, and Age

#Mean untuk Rating, Cards, dan Age
mean(dataCredit$Rating)

mean(dataCredit$Cards)

mean(dataCredit$Age)

#Median untuk Rating, Cards, dan Age

median(dataCredit$Rating)

median(dataCredit$Cards)

median(dataCredit$Age)

## 2.Compute the mode of Gender,Student, and Married

modeOf(dataCredit$Gender)

modeOf(dataCredit$Student)

modeOf(dataCredit$Married)

## 3.Compute the sample 10,37, and 91 percentiles of Education
# 10%
quantile(x=dataCredit$Education, probs = 0.1)

#37%
quantile(x=dataCredit$Education, probs = 0.37)

#91%
quantile(x=dataCredit$Education, probs = 0.91)

## 4.Compute the quartiles of Balace and its corresponding boxplot
#quartiles
quantile(x=dataCredit$Balance, probs = c(0.25, 0.5, 0.75))

#boxplot
boxplot(dataCredit$Balance, horizontal = TRUE)

## 5.Compute the correllation and the scatter plot between pairs of Limit and 
## Rating, Age and Card, Income and Education
a <- data.frame(limit = dataCredit$Limit, rating = dataCredit$Rating)
cor(a$limit, a$rating)
plot(a$limit, a$rating)

b <- data.frame(age = dataCredit$Age, cards = dataCredit$Cards)
cor(b$age, b$cards)
plot(b$age, b$cards)

c <- data.frame(income = dataCredit$Income, education = dataCredit$Education)
cor(c$income, c$education)
plot(c$income, c$education)


### Probabilitas
Contoh kasus
Di dalam sebuah wadah kotak besar terdapat banyak bola. Ada yang berwana merah,
kuning, putih, hijau dan biru. X adalah banyak nya bola putih yang diambil.
Berapa probabilitas terambil nya 5 bola putih jika terjadi pengambilan sebanyak
10 kali?

# Jawaban  
dbinom(x=5, size = 10, prob = 1/5)



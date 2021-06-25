# Numeric

bil <- 40
class(bil)

bil2 <- 12.4
class(bil2)
bil3 <- -234
class(bil3)

result <- bil + bil2

help('class')

# Character

kata <- 'selamat datang di mentoring udacoding'
lata2 <- "hello, saya nando kece"
class(kata)

# Type Data Logical

class(TRUE)
bil <- TRUE
bil2 <- F
bil2 <- T
bil_a <- T
 #boleh pakai .
bil.a <- F


# Tipe Data Vektor part 1(tipe data 1 dimensi yg sederhana)

#c=combine
v1 <- c(1,2,3,4,5,6)
v2 <- c("SAYA NANDO", T, 12.4)
#nambahin key
names(v1) <- c("a", "b", "c", "d", "e", "f")

name.v2 <- c("a1", "a2", "a3")
names(v2) <- name.v2
v2
v1
v1['a']
length(v2)

#dikalikan semua
v1 * 3
v1 + 10

# Type Data Vektor part 2

sum(v1)
min(v1)
max(v1)
# rata2
mean(v1)
# data tengah
median(v1)
# cek semuanya
v1 < 3
v1 > 5

# ambil data
v1[1]
#slicing
v1[1:3]
v1[c(1,3,5)]
v2[c(1,3)]

filter.a <- v1 < 5
v1[filter.a]

# Tipe Data Matrix

1:20
s.matrix <- matrix(1:20)
s.matrix

#ngatur dari row dan column
s.matrix <- matrix(s.matrix, nrow = 4)
s.matrix <- matrix(s.matrix, ncol = 10)

# buat matrix dari vektor
kampus.a <- c(4000, 5000, 6000, 7000, 6000)
kampus.b <- c(6000, 6000, 10000, 4000, 4000)

kampus.all <- c(kampus.a, kampus.b)
matrix.kampus <- matrix(kampus.all, nrow = 2)

#ubah nama column dan row
name_col <- c('2016', "2017", "2018", "2019",  "2020")
name_row <- c("KAMPUS A", "KAMPUS B")

colnames(matrix.kampus) <- name_col
rownames(matrix.kampus) <- name_row

#nambah row dan column
kampus.c <- c(4000, 4000, 4000, 5000, 6000)
matrix.kampus <- rbind(matrix.kampus, kampus.c)

coln_bar <- c(5000, 5000, 500)
matrix.kampus <- cbind(matrix.kampus, coln_bar)

# Tipe Data Matrix Part 2

rowSums(matrix.kampus)
colSums(matrix.kampus)

rowMeans(matrix.kampus)
colMeans(matrix.kampus)

rata <- rowMeans(matrix.kampus)
matrix.kampus <- cbind(matrix.kampus, rata)

matrix.kampus ^ 2
matrix.kampus * 3


#slicing
matrix.kampus[1:1]
matrix.kampus[2:5]
matrix.kampus[1:3, 3:4]


# Tipe Data Kategori

#nominal(tidak berurutan)
#ordinal(berurutan)

#nominal
minimarket <- c("makanan", "makanan", "minuman", "sembako", "minuman")
f.barang <- factor(minimarket)
f.barang

#ordinal
tk_sekolah <- c("tk", "kuliah", "smp", "sd", "sma")
f.tk <- factor(tk_sekolah, ordered = T, levels = c("tk", "sd", "smp", "sma", "kuliah"))
f.tk


# Tipe Data Frame part 1
# bedanya dengan matrix, dia 1 row/col tipe datanya bisa beda2


data()
class(mtcars)
m.df <- mtcars
View(m.df)
m.df <- iris
str(m.df)
summary(m.df)

nama <- c("fulan", "fulanah", "nando kece", "dodo", "didi")
tinggi <- c(200,170,140,180,130)
kategori <- factor(c("tinggi", "sedang", "pendek", "sedang", "pendek"))
df.orang <- data.frame(nama, tinggi, kategori)
str(df.orang)
summary(df.orang)

df.orang[1,]
df.orang[1:3,]
df.orang[c(1,3),]
df.orang[1,3]
df.orang[c(1,3), c(1,2)]

subset(df.orang, kategori == "sedang")

subset(df.orang, tinggi > 150)

subset(df.orang, tinggi > 150, kategori == "tinggi")


# Tipe Data List

data1 <- c(1:20)
data2 <- matrix(c(1:50))
data3 <- iris

m.list <- list(data1, data2, data3)

m.list <- list(a=data1, b=data2, c=data3)
m.list['a']
m.list[1]
# langsung value tanpa key dengan index
m.list[[1]]


# CSV
setwd('/home/rizal/Documents/belajar_r')
data.csv = read.csv('sekolah.csv')
class(data.csv)
# data teratas
head(data.csv)
# data paling bawah
tail(data.csv)
write.csv(data.csv, 'data.baru.csv')

data.baru <- read.csv('data.baru.csv')
data.baru

# XLSX

#readxl
library(readxl)
data2 = read_excel("Sekolah Tangsel.xlsx")
class(data2)
class(data.csv)

#xlsx
library(xlsx)
excel_sheets("Sekolah Tangsel.xlsx")
data.xslx <- read.xlsx("Sekolah Tangsel.xlsx", sheetName = "Export Query")
class(data.xslx)
data.xslx


a <- 100
a < 90
a > 90
a > 90 & a == 90
a > 90 | a == 90
a == 100
"a" %in% c("a", "b")
"a" %in% c("c", "b")
12 %in% 1:15
12 %in% 1:10

s.df <- mtcars
s.df[s.df$mpg > 22.0,]
s.df[s.df$mpg > 22.0, 5]

a <- 12
if (a > 10) {
  print("nilai a lebih besar 10")
} else {
  print("nilai a lebih kecil dari 10")
}


score = 95
if (score > 90) {
  print("ini saya pintar sekali")
} else if (score > 80 & score < 90) {
  print("ini pintar")
} else if (score > 70 & score < 80) {
  print("lsebih semangat")
} else {
  print("tetap semangat")
}

for (i in 1:10) {
  print(paste('nilai index =', i))
}
data.v <- c(1,2,3,4,5,6,7)
for (coba in 1:length(data.v)) {
  print(paste("nilai index vektor", coba))
}
for (coba.lagi in data.v) {
  print (coba.lagi)
}
data.l <- list(1,2,iris)
for (coba2 in data.l) {
  print(coba2)
}

dt.f <- mtcars
#length column
length(dt.f)
#length actual
nrow(dt.f)
ncol(dt.f)

for (i in 1:nrow(dt.f)) {
  print("check")
}
for (i in 1:30) {
  if (i%%2 == 0) {
    print(paste("ini nilai genap=",i))
  }
}
a <- 0
while (a < 10) {
  a <- a + 1
  if (a == 5) {
    break
  }
  print(a)
}

# Function

ini.coba <- function() {
  print('ini functionku')
}
ini.coba()

f.satu <- function(a = 1) {
  print(paste('ini nilai dari param =',a))
}
f.satu(12)

f.dua <- function() {
  return (12)
}
a <- f.dua()
print(a)

f.tiga <- function(a, b) {
  b <- a * b
  return(b)
}
result <- f.tiga(12,3)
result

df <- iris
data.result <- function() {
  return (df[df$Species == 'versicolor', ])
}
hasil.task <- data.result()

library(xlsx)
write.xlsx(hasil.task, "ini.hasil.ujian.xlsx")

#test edit

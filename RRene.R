getwd()


#vetores create

boat.names <- c("A", "B" , "C" ,"D")
boat.colors <- c ("Black", "green", "pink", "blue")
boat.ages <- c(143,53,356,23)
boat.prices <- c(53,87,54,66)
boat.costs <- c(52,80,20,100)

boat.prices [boat.ages>100]

boat.costs %in% c (52,80)
#Saber se um vetor esta contido em outro

boat.ages [which(boat.ages>144)]
#pega o maior valor que pertence ao vetor

which(boat.ages>145)
#pega o valor onde a casa esta maior do que 45

sum (boats.ages>0)
#compara??o simples de todas posi??es do vetor
mean (boat.ages>0)
#aqui calcula a porcentagem

v <- vector (mode= "numeric", length =3)
v [1] <-1
v<- c(v,5) #adiciona o 5 no final do vetor

v<- c (1,2,3,NA,6)
is.na (v)
#vai retornar valor logico
mean (v, na.rm=TRUE)
#desconsidera 

xx <- c(TRUE, 2) 


#Exercicio 3 vetores

# 1 1 2

#2 lista e dataframe

#3 2 6 6 12

x <- 1:4
y <- 2:3

x*y

teste <- c("Abdominal", "Salto", "suspens?o", "Correr", "conhecimento")

media <-c(30,155,50,1829,75)

desvioPadrao<-c(6,23,8,274,12)

Maria<-c(42,102,38,2149,97)

Joana<-c(38,173,71,1554,70)

maria.n <- c(Maria-mean(media))/sd(desvioPadrao)
joana.n <- c(Joana-mean(media))/sd(desvioPadrao)

mediaA<-maria.n/2
mediaB<-joana.n/2

max(mediaA)
max(mediaB)





is.na(vetor01)
#Retorna um vetor lógico com TRUE para valor ausente (NA)


mean(vetor01,na.rm=TRUE)
#resposta da média da nota


sd(vetor01,na.rm=TRUE) 
#calcular o desvio padrao do vetor removendo NA

median(vetor01, na.rm = TRUE)
# mediana do vetor removendo NA


sum(is.na(vetor01))
# soma todos NA do vetor

#321/15000
# calcular a media dos faltosos


x<-0

for (i in vetor01){
  if(i>7 && i<8){
    x<- x+1
  }
  
}

print(x)
# varre todo o vetor comparando as notas dos alunos maiores que 7 e menores que 8


x<-0

for (i in vetor01){
  if(i>9 || i<1){
    x<- x+1
  }
  
}

print(x)
# segue o mesmo do acima


#x <-x [! is.na (x)]
#remover NA do vetor

#criar um fator 
drinks <- factor(c("beer","beer","wine","water"))

mean(drinks=="beer")


T <- colSums(chuvas)
names(T[T==min(colSums(chuvas))])


mean(table(drinks [c(1,2)]))
mean(table(drinks))
gl(2,100,labels=c("M","F")) 

mean(table(drinks [c(1,2)]))
mean(table(drinks))
gl(2,100,labels=c("M","F")) 


#2= numero de repetição
#100 qtd de vezes repetida
#lebels é o rótulo do que vai repeti


#Como acessar os componentes de um fator?
 # O acesso aos componentes de um fator é muito semelhante ao dos vetores.

#> x
#[1] single  married married single
#Levels: married single
#> x[3]           # access 3rd element
#[1] married
#Levels: married single
#>  x[c(2, 4)]     # access 2nd and 4th element
#[1] married single
#Levels: married single
#> x[-1]          # access all but 1st element
#[1] married married single
#Levels: married single
#> x[c(TRUE, FALSE, FALSE, TRUE)]  # using logical vector
#[1] single single
#Levels: married single
#Como modificar um fator?
#  Os componentes de um fator podem ser modificados usando atribuições simples. No entanto, não podemos escolher valores fora de seus níveis predefinidos.

#> x
#[1] single  married married single
#Levels: single married divorced
#> x[2] <- "divorced"    # modify second element;  x
#[1] single   divorced married  single  
#Levels: single married divorced
#> x[3] <- "widowed"    # cannot assign values outside levels
#Warning message:
#  In `[<-.factor`(`*tmp*`, 3, value = "widowed") :
#  invalid factor level, NA generated
#> x
#[1] single   divorced <NA>     single  
#Levels: single married divorced



#dataframe

ToothGrowth.VC <-ToothGrowth[ToothGrowth$supp == "VC", ]



vetor <- c("M", "F", "F", "F", "M", "M")
A <-factor(vetor); A
levels (A)
table (A)

sum(airquality$Temp)


lista<-lapply(airquality,function(x){mean(x)});

lista[4]
lista$Temp


lista<-lapply(airquality$Temp,function(x){mean(x)});lista

head(lista)
View(lista)


# Data frame parte 2


mouse.info<-data.frame(mouse.color=c(c("purple", "red","yellow", "brown")), mouse.weight = c(23,21,18,26),stringsAsFactors = FALSE)





#mouse.info <-data.frame(mouse.color,mouse.weight,stringAsFactors = FALSE)
str(mouse.info)
#imprime a estrutura do dataframe

mouse.info[3,1]
#imprime apenas a linha 3

mouse.info$mouse.color
#imprime a primeira coluna

mouse.info[4,1]


View(mouse.info)


air <-data.frame(airquality)

min(air[,1],na.rm =T)
#Qual foi o valor mínimo de ozônio no mês de maio
str(air [complete.cases(air),])
# air [complete.cases(air),] case commplete remove NA do data set

#Extraia o subconjunto do data frame em que os valores de Ozônio estão acima de 25 e os valores da temperatura (Temp) estão abaixo de 90. Qual é a média do Solar.R nesse subconjunto? *
  
is.na(air)
mean(air$Solar.R [(air$Ozone>25) & (air$Temp)<90], na.rm = TRUE)


genomas <- as.data.frame(read.csv("https://www.dropbox.com/s/vgh6qk395ck86fp/genomes.csv?dl=1")); genomas

summary(genomas$Chromosomes)
#Quantos grupos diferentes existem? *
  
#mostra os levels
#quantidade devezes que os valores aparecem repetidamente
#Exemplo 000 111
# 0 1 aparecem

genomas$Groups <-as.factor(genomas$Groups); genomas$Groups
View (summary(genomas$Groups))




#Selecione os organismos com mais de 40 cromossomos. 
genomas$Chromosomes>40

#Selecione os organismos que contém plasm?eos e também possui mais de um cromossomo.
genomas$Organism[(genomas$Chromosomes>1)&(genomas$Plasmids>0)]




#genomas$Plasmids <-as.factor(genomas$Plasmids); genomas$Plasmids
#View (summary(genomas$Plasmids))

#genomas$Chromosomes <-ifelse(genomas$Chromosomes>2000,0,0);genomas$Chromosomes

#Carregue o arquivo cancer_stats.csv numa variável chamada cancer_stats através do seguinte comando: cancer_stats <- as.data.frame(read.csv("https://www.dropbox.com/s/g97bsxeuu0tajkj/cancer_stats.csv?dl=1")). 
#De posse desse dado, responda as perguntas abaixo.
#dataframe Cancer 

cancer_stats <- as.data.frame(read.csv("https://www.dropbox.com/s/g97bsxeuu0tajkj/cancer_stats.csv?dl=1"))


#min() # para retornar o menor valor
#which.min() # para retornar a posição do menor valor

View(cancer_stats)

is.na(cancer_stats)
cancer_stats$Site[max(cancer_stats$Female.Cases/cancer_stats$Female.Deaths, na.rm=TRUE)]

#Para qual local do câncer (site) do sistema digestivo (Digestive System) existem mais casos femininos do que masculinos?

cancer_stats$Site[cancer_stats$Class=="Digestive System" & cancer_stats$Female.Cases>cancer_stats$Male.Cases]


#Qual local do câncer tem a melhor taxa de sobrevivência para os homens? *
  
which.max(cancer_stats$Male.Cases/(cancer_stats$Male.Cases+cancer_stats$Male.Deaths))
#Qual local de câncer tem a pior taxa de sobrevivência para as mulheres?
which.min(cancer_stats$Female.Cases/(cancer_stats$Female.Cases+cancer_stats$Female.Deaths))


#String e express?es regulaters

cat("EU","AMO ", "RURAL")
#CONCATENA TUDO 





#Familia apply no datset

bebidas <- c ("Brahma", "cacildis", " heineken","Skol","Corona", "BudLight", "Debron", "buderweiser","Ekaut","Snoe beer","Bavaria","Bohemia","Crystal","Kaiser","Itaipava","Schin","Antartica","Amstel","Colorado","Capunga")

set.seed(100)
#gerar os memos valores aleatorios

precos <- runif(20, min = 2, max=10)
vendas <-runif(20, min=20, max=100)


estoques<-sample(c(20:50),size = 20,replace = TRUE)
#vinta volores de 20a 50

dataset_lojas <- data.frame(id_produto=c(1:20), Bebidas=bebidas,preco=precos,total_vendas=vendas,total_estoques = estoques)
head(dataset_lojas)



apply(X=dataset_lojas[, -c(1,2)],MARGIN = 2, FUN = sum)
#funcao soma, margen 2 que ? a coluna se fosse 1 seria linhas
#todas com excecao -c 1 e 2



lapply(X = dataset_lojas[,-c(1,2)], FUN=sum)
#retorna em uma lista



sapply(X=dataset_lojas[,-c(1,2)], FUN=sum)
#retornae m vetor
#A funcao (FUN) pode ser criada

sapply(X=dataset_lojas, FUN=class)

#para ver as classes



sapply(X=dataset_lojas, FUN=length)

sapply(X=dataset_lojas$Bebidas, FUN=nchar)
#conta a quantidade de carctere da coluna do dataset

#atividade 6

while (T) {

}
for (i in 1:4){ }  print(i)







USArrests 

prisoes <- function (estados,tiposPrisoes){
  
  prisoes(estados="Tennessee", tiposPrisoes=c("Rape","Murder")) 
}

sapply(X=USArrests, FUN=sum)

iris

apply(iris[ , 1:4], 1, FUN = mean)





apply(iris[ , 1:4], 2, FUN = mean) #media

sapply(iris[ , 1:4], 2, FUN = mean)

mapply(iris[ , 1:4], mean)

apply(iris[1:4, ], 2, FUN = mean)


tapply(iris$Petal.Length, iris$Species, mean)


tapply(iris[,3], iris$Species, mean)

with(iris, tapply(Petal.Length, Species, mean))

sapply(iris, 2, mean)

mapply(iris$Petal.Length, iris$Species, mean)

mean(iris$Petal.Length, iris$Species)


minhasNotas_1(Exe_1=c(NA,NA,7.5,1,10,2,5,6,7,8,10), VA_1=4, Exe_2=c(7,11,8.8,5,7,8), Proj=4, VA_2=7, VA_3=9, Opt=4, threshold=7) 


student.df = data.frame (nome= c ("Sue", "Eva", "Henry", "Jan"), sexo= c ("f", "f", "m", "m"), anos= c (21,15,17,19))


#/////////////////////////////////

#String e regexec(

  #strings <- c ("^ab","ab", "abc", "abd","abe", "ab 12")
strings <- c ("abcd","cdab", "cabd","c abd")



  grep ("ab.", strings, value=TRUE)
  
  # ^ inicio
  #$ fim da string
  #
  string <- c ("amo a rural ")
  grep ("ab", strings, value=TRUE)
  grep ("^ab", strings, value=TRUE)
  grep ("ab$", strings, value=TRUE)
  gsub("\\d","_", string)
  
  grep("abc|abd", strings, value = TRUE)

  bomdia <- c ("bom-dia", "boa-tarde", "boa-noite")
  
  grep("boa-(tarde|noite)", bomdia, value=TRUE)
  
  
  #
  
  
  #remove espaços em branco ou tabs
  gsub(pattern = "[[:blank:]]", replacement = "", texto)
  
  #Substitui pontuação por espaços em branco
  gsub (pattern = "[[:punct:]]", replacement=" ", texto)
  
  #remove caracteres alfanumeriocos
  
  gsub (pattern = "[[:alnum:]]", replacement = "", texto)

  
  
  
  
  #EX 9 
  gatosloucos<-as.data.frame(read.csv("https://www.dropbox.com/s/w4xv9urbowbig3s/catsM.csv?dl=1"))gatosloucos
  mean(gatosloucos$Bwt) 
  #media dos cats
  caracol_data<- read.csv(file = "Snail_feeding.csv", header = TRUE, strip.white = TRUE, na.strings = "")
  mean(caracol_data$Depth)
  
is.na(caracol_data)

#which.min (caracol_data$Distance&caracol_data$Sex=="female")



caracol_data$Snail.ID[(caracol_data$Size=="small")&(caracol_data$Sex=="female")&(caracol_data$Distance==1)]
#condicional de comparações da tabela.


PassaroLoco<-read.table(file = "Sparrows.csv", header = TRUE, sep=",")
View(PassaroLoco)

is.na(PassaroLoco)

PassaroLoco$Species[max(PassaroLoco$Head, na.rm = TRUE)]

PassaroLoco$Species[min(PassaroLoco$Head, na.rm = TRUE)]

which((PassaroLoco$Sex!="Female")&(PassaroLoco$Sex!="Male"))

#colnames(PassaroLoco)[names(PassaroLoco$Sex)=="Femal"]<-"Female"


library(data.table)
#install.packages("data.table")


#colnames(PassaroLoco)<-c("Femal","Female")

which((PassaroLoco$Sex=="Female")& mean(PassaroLoco$Tarsus))

mean(PassaroLoco$Sex=="Male",PassaroLoco$Tarsus)



mean(PassaroLoco$Tarsus[PassaroLoco$Sex=="Male"])

#pega a media especifica da coluna do Sexo no caso masculino



mean(PassaroLoco$Tarsus[PassaroLoco$Sex=="Female"])

#pega a media especifica da coluna do Sexo no caso feminino

 
  which(is.na(PassaroLoco$Wing))
PassaroLoco[64,3]<-59
PassaroLoco[250,3]<-56.5
PassaroLoco[806,3]<-57
#substituir

mean(PassaroLoco$Wing)

duplicated(PassaroLoco)
#Olhar linhas duplicadas


library(dplyr)
#Abrir a bibliotece

Sparrows_Ordenado<-PassaroLoco[with(PassaroLoco,order(PassaroLoco$Wing,PassaroLoco$Head)),]


arrange(PassaroLoco,PassaroLoco$Wing,PassaroLoco$Head)


#manipulacao AVANCED
library(dplyr)


df=data.frame(Theoph)
#abrir o dataset theoph

df %>% pull(Dose)

df %>% select(3:3)
#apenas a coluna 3


df %>% filter(Dose>5)
#doses que sejam maior que 5


df %>% slice(10:20)
#Fatiar da linha 10-20


df %>% filter(Dose>5 & Time>mean(df$Time))
#Qual comando apresenta os dados para as doses maiores que 5 e cujo o tempo desde a administração do medicamento (Time) é maior que a média do mesmo? Use apenas um único comando. Ao submeter a resposta remova todos os espaços em branco. *

df %>%arrange(desc(Wt))
#Qual comando organizar df por peso (decrescente) ? Ao submeter a resposta remova todos os espaços em branco. *

df %>%arrange(desc(Wt))
#organizar por ordem decrescente

#df[order(Wt,-Time)


df %>%arrange(Wt,desc(Time))
#Organizar por ordem crescente  e descrescente


#Qual comando organizar df por peso (crescente) e tempo (decrescente) ?Ao submeter a resposta remova todos os espaços em branco. *

#df$tendencia <-df$Time; df$tendencia SEM DPLYR

df<- df %>% mutate(tendencia=Time) #CORRETO COM DIPLYR
#cria nova coluna tedencia
#max(df$conc)
#maior concentração de teofilina
df %>% slice_max(conc)


#=======================================================================================
ontime <-read.csv(file = "673598238_T_ONTIME_REPORTING.csv",  quote ="\"" , sep=",")
unique <-read.csv(file="L_UNIQUE_CARRIERS.csv_", quote="\"", sep=",")

combinacao <-merge(x= ontime,y= unique, by.x ="OP_UNIQUE_CARRIER" ,by.y ="Code" , all = TRUE)


#-=-------------------------------------------------------------
combinacao %>%slice_max(DEP_DELAY_NEW)

is.na(combinacao)


combinacao$Description[]

combinacao %>% slice_max

mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="JetBlue Airways"], na.rm = TRUE)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="American Airlines Inc."], na.rm = TRUE)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="Hawaiian Airlines Inc."], na.rm = TRUE)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="Endeavor Air Inc."], na.rm = TRUE)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="SkyWest Airlines Inc."], na.rm = TRUE)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="Southwest Airlines Co."], na.rm = TRUE)


mean(combinacao$DEP_DELAY_NEW)




which.max(cancer_stats$Male.Cases/(cancer_stats$Male.Cases+cancer_stats$Male.Deaths))

#(combinacao$Description=="Southwest Airlines Co."& combinacao$DEP_DELAY_NEW)/(combinacao$DEP_DELAY_NEW)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="Southwest Airlines Co."], na.rm = TRUE)/mean(combinacao$DEP_DELAY_NEW,na.rm = TRUE)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="SkyWest Airlines Inc."], na.rm = TRUE)/mean(combinacao$DEP_DELAY_NEW,na.rm = TRUE)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="Hawaiian Airlines Inc."], na.rm = TRUE)/mean(combinacao$DEP_DELAY_NEW,na.rm = TRUE)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="American Airlines Inc."], na.rm = TRUE)/mean(combinacao$DEP_DELAY_NEW,na.rm = TRUE)
mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="Endeavor Air Inc."], na.rm = TRUE)/mean(combinacao$DEP_DELAY_NEW,na.rm = TRUE)

#pega a media especifica da coluna do Sexo no caso masculino















library(tidyr)



TB <-data.frame (read.csv("http://stat405.had.co.nz/data/tb.csv"))
TB$

TB$new_sp<-NULL


novoTB<-TB %>% gather(N_casos, Codigo, 3:22)
is.na(novoTB)
mean(novoTB$Codigo[novoTB$iso2=="US"], na.rm=TRUE)
mean(novoTB$Codigo, na.rm = TRUE)  

mean(combinacao$DEP_DELAY_NEW[combinacao$Description=="JetBlue Airways"], na.rm = TRUE)

#separate(novoTB,Codigo,into = ())

sum(novoTB$year=="2009", na.rm = TRUE)
options(max.print=999999)

is.na(TB)

sum(novoTB$iso2=="TH",na.rm = TRUE)





#Primeira VA

#1
strg <- c("Voda 30", "bylinky 25", "ZEM 23", "zlAto 22")


tolower(paste(strg,set='%',sep=''))

#paste0("^",strg,"%")
#coloca ^ antes e $ depois 


#2 
teste <- c("5!eAZ","!6!rrrrDFGT","R99Tf34!RR","123?aSd")
grep ("^([0-9][[:punct:]][a-z])", teste, value=TRUE)


#3

library(stringr)
library(readr)
#ler pra ficar em vetor unico
df <-read_file("gambler.txt")
nchar(df)
str_length(df)    
#ambas funcoes acima contam os caracteres 












#funcion



#4





















ontime <-read.csv(file = "673598238_T_ONTIME_REPORTING.csv",  quote ="\"" , sep=",")
http <-c ("www.dogman.com", "http://rotterdam.com", "https://facebook.com", "httpx://sims.com", "fungame.http","http:/")

grep ("(^http)+(:|s)",http,value=TRUE)

library(ggplot2)
library(dplyr)

#Diamonds
txt<-diamonds

is.na(txt)
mean(txt$price[txt$carat>0.7 & txt$cut=="Very Good"], na.rm = TRUE)


#2

txt$color[min(txt$price[txt$carat>0.5])]


sum(txt$cut=="Premium")
mean(text$cut)

#Questão Fertility
library(AER)

Fatality<-data("Fertility")

Fertility%>%slice(35:50)
is.na(Fertility)
mean(Fertility$work>30&Fertility$morekids=="yes",na.rm = TRUE)


#2

sum(Fertility$gender1=="male" & (Fertility$age>21 & Fertility$age<25) ,na.rm = TRUE)

sum(Fertility$gender1=="male")


#

tx2<-read.csv(file="Forbes2000_V2.csv")
tx2 %>% arrange((marketvalue))
tx2 %>% filter(X==1234)
tx2 %>% filter(category=="Banking")



Catfish <- read_csv("Catfish.csv")
tratamento<-read.csv(file="Treatment.csv")

head(Catfish)
str(Catfish)


competition <-data.frame (read.csv("https://docs.google.com/drawings/d/1-8biPvM3H8RaFFgLWttnnCuntSZ8lyKz8zvodemd5XY/edit?usp=sharing "))

casosCompletos<-function(df,linhas=NA){
  
  
}
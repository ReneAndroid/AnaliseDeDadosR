getwd()


#Vai chupar uma rola e uma macaca e um mama cobra

boat.names <- c("A", "B" , "C" ,"D")
boat.colors <- c ("Black", "green", "pink", "blue")
boat.ages <- c(143,53,356,23)
boat.prices <- c(53,87,54,66)
boat.costs <- c(52,80,20,100)

boat.prices [boat.ages>100]

boat.costs %in% c (52,80)
#SAber se um vetor esta contido em outro

boat.ages [which(boat.ages>144)]
#pega o maior valor que pertence ao vetor

which(boat.ages>145)
#pega o valor onde a casa est? maior doque 45
c
sum (boats.ages>0)
#compara??o simples de todas posi??es do vetor
mean (boat.ages>0)
#aqui calcula a porcentagem

v <- vector (mode= "numeric", length =3)
v [1] <-1
v<- c(v,5) #adiciona o 5 no final do vetor

v<- c (1,2,3,NA,6)
is.na (v)
#vai retornar valor l?gico
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

#Selecione os organismos que contém plasm�eos e também possui mais de um cromossomo.
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


#String e express�es regulaters

cat("EU","AMO ", "RURAL")
#CONCATENA TUDO 





#Familia apply na porra do datset

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
#funcao soma, margen 2 que � a coluna se fosse 1 seria linhas
#todas com excecao -c 1 e 2
lapply(X = dataset_lojas[,-c(1,2)], FUN=sum)
#retorna em uma lista
sapply(X=dataset_lojas[,-c(1,2)], FUN=sum)
#retornae m vetor
#A fun�ao (FUN) pode ser criada

sapply(X=dataset_lojas, FUN=class)


#para ver as classes



sapply(X=dataset_lojas, FUN=length)

sapply(X=dataset_lojas$Bebidas, FUN=nchar)
#conta a quantidade de carctere da coluna do dataset

















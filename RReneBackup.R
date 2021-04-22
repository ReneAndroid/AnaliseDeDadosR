getwd()


#Vai chupar uma rola

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

lista<-lapply(airquality$Temp,function(x){mean(x)});lista
head(lista)
View(lista)




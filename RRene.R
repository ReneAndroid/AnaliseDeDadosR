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
#Retorna um vetor l√≥gico com TRUE para valor ausente (NA)
mean(vetor01,na.rm=TRUE)
#resposta da m√©dia da nota
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


#2= numero de repeti√ß√£o
#100 qtd de vezes repetida
#lebels √© o r√≥tulo do que vai repeti


#Como acessar os componentes de um fator?
 # O acesso aos componentes de um fator √© muito semelhante ao dos vetores.

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
#  Os componentes de um fator podem ser modificados usando atribui√ß√µes simples. No entanto, n√£o podemos escolher valores fora de seus n√≠veis predefinidos.

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
#Qual foi o valor m√≠nimo de oz√¥nio no m√™s de maio
str(air [complete.cases(air),])
# air [complete.cases(air),] case commplete remove NA do data set

#Extraia o subconjunto do data frame em que os valores de Oz√¥nio est√£o acima de 25 e os valores da temperatura (Temp) est√£o abaixo de 90. Qual √© a m√©dia do Solar.R nesse subconjunto? *
  
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

#Selecione os organismos que cont√©m plasm?eos e tamb√©m possui mais de um cromossomo.
genomas$Organism[(genomas$Chromosomes>1)&(genomas$Plasmids>0)]




#genomas$Plasmids <-as.factor(genomas$Plasmids); genomas$Plasmids
#View (summary(genomas$Plasmids))

#genomas$Chromosomes <-ifelse(genomas$Chromosomes>2000,0,0);genomas$Chromosomes

#Carregue o arquivo cancer_stats.csv numa vari√°vel chamada cancer_stats atrav√©s do seguinte comando: cancer_stats <- as.data.frame(read.csv("https://www.dropbox.com/s/g97bsxeuu0tajkj/cancer_stats.csv?dl=1")). 
#De posse desse dado, responda as perguntas abaixo.
#dataframe Cancer 

cancer_stats <- as.data.frame(read.csv("https://www.dropbox.com/s/g97bsxeuu0tajkj/cancer_stats.csv?dl=1"))

#min() # para retornar o menor valor
#which.min() # para retornar a posi√ß√£o do menor valor

View(cancer_stats)

is.na(cancer_stats)
cancer_stats$Site[max(cancer_stats$Female.Cases/cancer_stats$Female.Deaths, na.rm=TRUE)]

#Para qual local do c√¢ncer (site) do sistema digestivo (Digestive System) existem mais casos femininos do que masculinos?

cancer_stats$Site[cancer_stats$Class=="Digestive System" & cancer_stats$Female.Cases>cancer_stats$Male.Cases]


#Qual local do c√¢ncer tem a melhor taxa de sobreviv√™ncia para os homens? *
  
which.max(cancer_stats$Male.Cases/(cancer_stats$Male.Cases+cancer_stats$Male.Deaths))
#Qual local de c√¢ncer tem a pior taxa de sobreviv√™ncia para as mulheres?
which.min(cancer_stats$Female.Cases/(cancer_stats$Female.Cases+cancer_stats$Female.Deaths))


#String e express?es regulaters

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
#funcao soma, margen 2 que ? a coluna se fosse 1 seria linhas
#todas com excecao -c 1 e 2
lapply(X = dataset_lojas[,-c(1,2)], FUN=sum)
#retorna em uma lista
sapply(X=dataset_lojas[,-c(1,2)], FUN=sum)
#retornae m vetor
#A fun?ao (FUN) pode ser criada

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


#----------------------------------------------------------

#String e regexec

  #strings <- c ("^ab","ab", "abc", "abd","abe", "ab 12")
strings <- c ("abcd","cdab", "cabd","c abd")



  grep ("ab.", strings, value=TRUE)
  
  # ^ inicio
  #$ fim da string
  
  #--------------------------------------------------
  string <- c ("amo a rural ")
  grep ("ab+c", strings, value=TRUE)
  # se tiver ab dentro da string È retornada
  
  
  grep ("^ab", strings, value=TRUE)
  #se tiver no comeco da string
  
  grep ("ab$", strings, value=TRUE)
  
  #se tiver ab no fim da string
  
  gsub("\\d","_", string)
  
  grep("abc|abd", strings, value = TRUE)
  
#-----------------------------------------------------
  bomdia <- c ("bom-dia", "boa-tarde", "boa-noite")
  
  grep("boa-(tarde|noite)", bomdia, value=TRUE)
  #pega so boa tarde ou boa noite
#----------------------------------------------------
  
  
  #-------------------------------------------------------
  
  
  
  #remove espacos em branco ou tabs
  gsub(pattern = "[[:blank:]]", replacement = "", texto)
  
  #Substitui pontuacao por espacos em branco
  gsub (pattern = "[[:punct:]]", replacement=" ", texto)
  
  #remove caracteres alfanumeriocos
  
  gsub (pattern = "[[:alnum:]]", replacement = "", texto)
  #----------------------------------------------------------
  
  
  
  string <- "meu numero È 1006781"
  #Extrai somente o numero da string
  gsub (pattern ="[^0-9]", replacement = "", x=string)
  
  
  valores <- c("A1", "A2", "A3","A4","A5","A6", "A7")
  #vai buscar as posiÁıes pesquisadas
  grep (pattern = "A1|A4", x=valores, value= FALSE)
  
  
  # . È qualquer coisa
  # * È antes
#vai pegar tudo antes dos dois pontos e vai substituir= replacement por branco
  StringN <- c("G1:E001", "G2:E002", "G3:E003" )
  gsub (pattern= ".*:", replacement = "", x= StringN)
  #extrair informaÁoes contidas dentro de uma string
  
  
  
  #[:punct:]: punctuation.
  #[:alpha:]: letters.
  #[:lower:]: lowercase letters.
  #[:upper:]: upperclass letters.
  #[:digit:]: digits.
  #[:xdigit:]: hex digits.
  #[:alnum:]: letters and numbers.
  #[:cntrl:]: control characters.
  #[:graph:]: letters, numbers, and punctuation.
  #[:print:]: letters, numbers, punctuation, and whitespace.
  #[:space:]: space characters (basically equivalent to \s).
  #[:blank:]: space and tab.
  
  
  v<-c(20,30,4,934,1077,22)
  
  paste(v,set ="m",sep="")
  #set ele ponha a letra do lado enquanto sep ele remove espaÁo em branco
  
  library (stringr)
  
  stringS <- "Oq vai fazer amanha? (Estudar CPAD) ver video (jogar) ( jogar)"
  
  str_extract_all(stringS, "\\(.*?\\)")[[1]]
  
  
  #pegar emails
  
  stringMail <- c ("reneandraderhc@gmail.com que porcara reneandraderhc@hotmail.com")
  
  str_extract_all(string=stringMail, pattern= "\\S*@\\S*")
  
  #\\s procura qualquer coisa 
  #\\ pega tudo antes do @ que n„o seja espaÁo
  
  
  
  
  
  
  
  
  
  #Exercicio lista string 
  
  txt = c("eeer","3ca1n","fg","can","man","sigmean","fa3nta","fan")
  
  grep ("^c|^m|^f+(an$)",txt,value=TRUE)
  
  library(stringr)
  
  txt2 = "eeer3GHJca1nfgSigmanfaUIOntafan"
  str_extract_all(string=txt2,pattern="[[:upper:][:digit:]]") 
  grep("[0-9]",txt2,value=TRUE)
  
  
  txt = "tttyUFRPE19PPGIAkjgkjghk2j34j321UFRPEcapdPPGIA"
  
  str_extract_all(string=txt,pattern="UFRPE(19|capd)PPGIA")
  #\\s pega atras e com * pega tudo
  
  aux<- read.delim("https://www.dropbox.com/s/4yr2woj8r1p5sbn/gapminderDataFiveYear.txt?dl=1")

  str_extract_all(string=aux,pattern ="\\S*and\\S",simplify = FALSE)
  
  grep(pattern = "^Ba",aux$country, value=TRUE)
  grep(pattern = "land$",aux$country,value=TRUE)
  grep(pattern = "Ga",aux$country,value=TRUE)
 #R = 156
  str_count {stringr}	
  
  
  carlos <- c("No meio do caminho tinha uma pedra
tinha uma pedra no meio do caminho
tinha uma pedra
no meio do caminho tinha uma pedra.

Nunca me esquecerei desse acontecimento
na vida de minhas retinas t„o fatigadas.
Nunca me esquecerei que no meio do caminho
tinha uma pedra
tinha uma pedra no meio do caminho
no meio do caminho tinha uma pedra.")
  
  str_count(string, pattern = " ")
  
  
  
  ventoinha <-c("abc","xyz", "abc|xyz")
  
  grep ("abc", vetorinha, value=TRUE)
  
  
  ventoinha2 <-c("asccbbbbcbcccc","ac","abcbcbcbc","azc","abbbbbbbb","abc" )
  grep("a.[bc]+",ventoinha2,value=TRUE)
  
  ventoinha3 <- c ("abc", "ac", "abbb","bbc")
  grep("ab+c", ventoinha3,value=TRUE)
  
  ventoinha4<-c("battle", "hot","green","swamping.", "jump up.", "undulate?", "is.?")
  str_extract_all(string=ventoinha4, pattern ="[a-z]+[\.\?!]" )
  
  ventoinha5 <-c("Butt=","BotHEr,=","Ample","FIdDIE7h","Brittle=","Other.=")
 str_extract_all (string = ventoinha5,pattern = "[a-zA-Z]*[^,]=" )
  
 ventoinha6<-c("A B","C! d", "e f","g. H"," i? J","K L")
  str_extract_all(string=ventoinha6, pattern ="[a-z][\.\?!]\s+[A-Z]" )
  
  ventoinha7 <-c("abababa","aaba","aabbaa","aba","aabababa")
  grep("a(ab)*a",ventoinha7,value=TRUE)
  
  
  martin <- c (  "Eu estou contente em unir-me com vocÍs no dia que entrar· para a histÛria como a maior demonstraÁ„o pela liberdade na histÛria de nossa naÁ„o.
               
               Cem anos atr·s, um grande americano, na qual estamos sob sua simbÛlica sombra, assinou a ProclamaÁ„o de EmancipaÁ„o. Esse importante decreto veio como um grande farol de esperanÁa para milhıes de escravos negros que tinham murchados nas chamas da injustiÁa. Ele veio como uma alvorada para terminar a longa noite de seus cativeiros.
               Mas cem anos depois, o Negro ainda n„o È livre.
               Cem anos depois, a vida do Negro ainda È tristemente inv·lida pelas algemas da segregaÁ„o e as cadeias de discriminaÁ„o.
               Cem anos depois, o Negro vive em uma ilha sÛ de pobreza no meio de um vasto oceano de prosperidade material. Cem anos depois, o Negro ainda adoece nos cantos da sociedade americana e se encontram exilados em sua prÛpria terra. Assim, nÛs viemos aqui hoje para dramatizar sua vergonhosa condiÁ„o.
               
               De certo modo, nÛs viemos ‡ capital de nossa naÁ„o para trocar um cheque. Quando os arquitetos de nossa rep˙blica escreveram as magnÌficas palavras da ConstituiÁ„o e a DeclaraÁ„o da IndependÍncia, eles estavam assinando uma nota promissÛria para a qual todo americano seria seu herdeiro. Esta nota era uma promessa que todos os homens, sim, os homens negros, como tambÈm os homens brancos, teriam garantidos os direitos inalien·veis de vida, liberdade e a busca da felicidade. Hoje È Ûbvio que aquela AmÈrica n„o apresentou esta nota promissÛria. Em vez de honrar esta obrigaÁ„o sagrada, a AmÈrica deu para o povo negro um cheque sem fundo, um cheque que voltou marcado com fundos insuficientes.
               
               Mas nÛs nos recusamos a acreditar que o banco da justiÁa È falÌvel. NÛs nos recusamos a acreditar que h· capitais insuficientes de oportunidade nesta naÁ„o. Assim nÛs viemos trocar este cheque, um cheque que nos dar· o direito de reclamar as riquezas de liberdade e a seguranÁa da justiÁa.
               
               NÛs tambÈm viemos para recordar ‡ AmÈrica dessa cruel urgÍncia. Este n„o È o momento para descansar no luxo refrescante ou tomar o remÈdio tranq¸ilizante do gradualismo.
               Agora È o tempo para transformar em realidade as promessas de democracia.
               Agora È o tempo para subir do vale das trevas da segregaÁ„o ao caminho iluminado pelo sol da justiÁa racial.
               Agora È o tempo para erguer nossa naÁ„o das areias movediÁas da injustiÁa racial para a pedra sÛlida da fraternidade. Agora È o tempo para fazer da justiÁa uma realidade para todos os filhos de Deus.
               
               Seria fatal para a naÁ„o negligenciar a urgÍncia desse momento. Este ver„o sufocante do legÌtimo descontentamento dos Negros n„o passar· atÈ termos um renovador outono de liberdade e igualdade. Este ano de 1963 n„o È um fim, mas um comeÁo. Esses que esperam que o Negro agora estar· contente, ter„o um violento despertar se a naÁ„o votar aos negÛcios de sempre
               
               . Mas h· algo que eu tenho que dizer ao meu povo que se dirige ao portal que conduz ao pal·cio da justiÁa. No processo de conquistar nosso legÌtimo direito, nÛs n„o devemos ser culpados de aÁıes de injustiÁas. N„o vamos satisfazer nossa sede de liberdade bebendo da xÌcara da amargura e do Ûdio. NÛs sempre temos que conduzir nossa luta num alto nÌvel de dignidade e disciplina. NÛs n„o devemos permitir que nosso criativo protesto se degenere em violÍncia fÌsica. Novamente e novamente nÛs temos que subir ‡s majestosas alturas da reuni„o da forÁa fÌsica com a forÁa de alma. Nossa nova e maravilhosa combatividade mostrou ‡ comunidade negra que n„o devemos ter uma desconfianÁa para com todas as pessoas brancas, para muitos de nossos irm„os brancos, como comprovamos pela presenÁa deles aqui hoje, vieram entender que o destino deles È amarrado ao nosso destino. Eles vieram perceber que a liberdade deles È ligada indissoluvelmente a nossa liberdade. NÛs n„o podemos caminhar sÛ.
               
               E como nÛs caminhamos, nÛs temos que fazer a promessa que nÛs sempre marcharemos ‡ frente. NÛs n„o podemos retroceder. H· esses que est„o perguntando para os devotos dos direitos civis, Quando vocÍs estar„o satisfeitos?
               
               NÛs nunca estaremos satisfeitos enquanto o Negro for vÌtima dos horrores indizÌveis da brutalidade policial. NÛs nunca estaremos satisfeitos enquanto nossos corpos, pesados com a fadiga da viagem, n„o poderem ter hospedagem nos motÈis das estradas e os hotÈis das cidades. NÛs n„o estaremos satisfeitos enquanto um Negro n„o puder votar no Mississipi e um Negro em Nova Iorque acreditar que ele n„o tem motivo para votar. N„o, n„o, nÛs n„o estamos satisfeitos e nÛs n„o estaremos satisfeitos atÈ que a justiÁa e a retid„o rolem abaixo como ·guas de uma poderosa correnteza.
               
               Eu n„o esqueci que alguns de vocÍ vieram atÈ aqui apÛs grandes testes e sofrimentos. Alguns de vocÍ vieram recentemente de celas estreitas das prisıes. Alguns de vocÍs vieram de ·reas onde sua busca pela liberdade lhe deixaram marcas pelas tempestades das perseguiÁıes e pelos ventos de brutalidade policial. VocÍ s„o o veteranos do sofrimento. Continuem trabalhando com a fÈ que sofrimento imerecido È redentor. Voltem para o Mississippi, voltem para o Alabama, voltem para a Carolina do Sul, voltem para a GeÛrgia, voltem para Louisiana, voltem para as ruas sujas e guetos de nossas cidades do norte, sabendo que de alguma maneira esta situaÁ„o pode e ser· mudada. N„o se deixe caiar no vale de desespero.
               
               Eu digo a vocÍ hoje, meus amigos, que embora nÛs enfrentemos as dificuldades de hoje e amanh„. Eu ainda tenho um sonho. … um sonho profundamente enraizado no sonho americano.
               
               Eu tenho um sonho que um dia esta naÁ„o se levantar· e viver· o verdadeiro significado de sua crenÁa - nÛs celebraremos estas verdades e elas ser„o claras para todos, que os homens s„o criados iguais.
               
               Eu tenho um sonho que um dia nas colinas vermelhas da GeÛrgia os filhos dos descendentes de escravos e os filhos dos desdentes dos donos de escravos poder„o se sentar junto ‡ mesa da fraternidade.
               
               Eu tenho um sonho que um dia, atÈ mesmo no estado de Mississippi, um estado que transpira com o calor da injustiÁa, que transpira com o calor de opress„o, ser· transformado em um o·sis de liberdade e justiÁa.
               
               Eu tenho um sonho que minhas quatro pequenas crianÁas v„o um dia viver em uma naÁ„o onde elas n„o ser„o julgadas pela cor da pele, mas pelo conte˙do de seu car·ter. Eu tenho um sonho hoje!
                 
                 Eu tenho um sonho que um dia, no Alabama, com seus racistas malignos, com seu governador que tem os l·bios gotejando palavras de intervenÁ„o e negaÁ„o; nesse justo dia no Alabama meninos negros e meninas negras poder„o unir as m„os com meninos brancos e meninas brancas como irm„s e irm„os. Eu tenho um sonho hoje!
                 
                 Eu tenho um sonho que um dia todo vale ser· exaltado, e todas as colinas e montanhas vir„o abaixo, os lugares ·speros ser„o aplainados e os lugares tortuosos ser„o endireitados e a glÛria do Senhor ser· revelada e toda a carne estar· junta.
               
               Esta È nossa esperanÁa. Esta È a fÈ com que regressarei para o Sul. Com esta fÈ nÛs poderemos cortar da montanha do desespero uma pedra de esperanÁa. Com esta fÈ nÛs poderemos transformar as discÛrdias estridentes de nossa naÁ„o em uma bela sinfonia de fraternidade. Com esta fÈ nÛs poderemos trabalhar juntos, rezar juntos, lutar juntos, para ir encarcerar juntos, defender liberdade juntos, e quem sabe nÛs seremos um dia livre. Este ser· o dia, este ser· o dia quando todas as crianÁas de Deus poder„o cantar com um novo significado.
               
               Meu paÌs, doce terra de liberdade, eu te canto.

Terra onde meus pais morreram, terra do orgulho dos peregrinos,

De qualquer lado da montanha, ouÁo o sino da liberdade!
               
               E se a AmÈrica È uma grande naÁ„o, isto tem que se tornar verdadeiro.
               
               E assim ouvirei o sino da liberdade no extraordin·rio topo da montanha de New Hampshire.
               
               Ouvirei o sino da liberdade nas poderosas montanhas poderosas de Nova York.
               
               Ouvirei o sino da liberdade nos engrandecidos Alleghenies da Pennsylvania.
               
               Ouvirei o sino da liberdade nas montanhas cobertas de neve Rockies do Colorado.
               
               Ouvirei o sino da liberdade nas ladeiras curvas da CalifÛrnia.
               
               Mas n„o È sÛ isso. Ouvirei o sino da liberdade na Montanha de Pedra da GeÛrgia.
               
               Ouvirei o sino da liberdade na Montanha de Vigil‚ncia do Tennessee.
               
               Ouvirei o sino da liberdade em todas as colinas do Mississipi.
               
               Em todas as montanhas, ouviu o sino da liberdade.
               
               E quando isto acontecer, quando nÛs permitimos o sino da liberdade soar, quando nÛs deixarmos ele soar em toda moradia e todo vilarejo, em todo estado e em toda cidade, nÛs poderemos acelerar aquele dia quando todas as crianÁas de Deus, homens pretos e homens brancos, judeus e gentios, protestantes e catÛlicos, poder„o unir m„os e cantar nas palavras do velho spiritual negro:
                 
                 Livre afinal, livre afinal.

AgradeÁo ao Deus todo-poderoso, nÛs somos livres afinal.  ")
  
  
  str_extract_all(string = martin,pattern="(N|n)egr(a|o)|(N|n)egr(as|os)")
  
  #so pega negro, negros, negras
  
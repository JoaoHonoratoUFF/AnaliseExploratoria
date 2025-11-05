# Análise ----

## Pacotes ----

library(readxl)

## Base ----

Base_trabalho <- read_excel("Base_trabalho.xlsx")

## Dicionário ----

Dicionario_Base_Trabalho <- read_excel("dicionario_Base_trabalho.xlsx")


## Convertendo as var. qualitativas em fatores ----

str(Base_trabalho)

Base_trabalho$escolaridade <- as.factor(Base_trabalho$escolaridade)
Base_trabalho$reincidente  <- as.factor(Base_trabalho$reincidente)
Base_trabalho$filhos       <- as.factor(Base_trabalho$filhos)
Base_trabalho$sexo         <- as.factor(Base_trabalho$sexo)
Base_trabalho$casado       <- as.factor(Base_trabalho$casado)

## Verificando NAs ----

sum(is.na(Base_trabalho))

## Histograma da var. "Idade" ----

hist(Base_trabalho$idade,
     main = "Histograma da Idade",
     xlab = "Idade do detento (anos completos)",
     ylab = "Frequência",
     col = "grey",
     border = "black",
     breaks = 15,       
     xlim = c(min(Base_trabalho$idade, na.rm = TRUE),
              max(Base_trabalho$idade, na.rm = TRUE)))    

#    A análise do histograma da idade dos detentos mostra uma distribuição que não é simétrica. A faixa de maior frequência de indivíduos está localizada no intervalo entre 50 e 55 anos. Há também uma segunda concentração muito significativa de detentos na faixa dos 30-35 anos, com uma contagem quase tão alta quanto a do pico principal. O histograma exibe uma evidente assimetria à direita.

## Boxplot da variável tempo_preso ----

boxplot(Base_trabalho$tempo_preso,
        main = "Boxplot do Tempo Preso",
        ylab = "Tempo Preso (em meses ou anos)",
        col = "grey",
        border = "black")

#    O boxplot da var. "tempo_Preso" mostra uma mediana de aproximadamente 60 meses, com os 50% centrais dos dados concentrados entre 54 e 67 meses. A distribuição apresenta uma leve assimetria à direita, indicada pela maior variabilidade nos valores mais altos, e revela a presença de um outlier superior, próximo de 90 meses.

## Boxplot da variável score_periculosidade por escolaridade ----

boxplot(Base_trabalho$score_periculosidade ~ Base_trabalho$escolaridade,
        main = "Score de Periculosidade por Escolaridade",
        xlab = "Escolaridade",
        ylab = "Score de Periculosidade",
        col = "grey",
        border = "black")

#    O boxplot do "Score de Periculosidade" por escolaridade mostra que detentos com ensino fundamental e ensino médio têm medianas semelhantes e mais altas (aprox. 175-180). Em contrapartida, detentos com ensino superior possuem uma mediana visivelmente inferior (aprox. 165). Destaca-se que apenas o grupo de ensino médio apresenta valores a existência de um outlier.

## Gráfico de barras para a variável reincidente ----

barplot(table(Base_trabalho$reincidente),
        main = "Distribuição de Reincidência",
        ylab = "Frequência",
        xlab = "Reincidente",
        col = "grey",
        border = "black")

#    Observa-se que a categoria "não reincidente" é predominante na amostra, com uma frequência absoluta muito alta, próxima de 160 indivíduos. Em contrapartida, a categoria "reincidente" é significativamente menor, registrando uma frequência de aproximadamente 40 indivíduos.

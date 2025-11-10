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

## Boxplot da variável tempo_preso ----

boxplot(Base_trabalho$tempo_preso,
        main = "Boxplot do Tempo Preso",
        ylab = "Tempo Preso (em meses ou anos)",
        col = "grey",
        border = "black")

## Boxplot da variável score_periculosidade por escolaridade ----

boxplot(Base_trabalho$score_periculosidade ~ Base_trabalho$escolaridade,
        main = "Score de Periculosidade por Escolaridade",
        xlab = "Escolaridade",
        ylab = "Score de Periculosidade",
        col = "grey",
        border = "black")

## Gráfico de barras para a variável reincidente ----

barplot(table(Base_trabalho$reincidente),
        main = "Distribuição de Reincidência",
        ylab = "Frequência",
        xlab = "Reincidente",
        col = "grey",
        border = "black")

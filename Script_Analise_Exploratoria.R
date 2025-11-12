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



## Estatísticas descritivas ----

summary(Base_trabalho$score_periculosidade)
summary(Base_trabalho$idade)
summary(Base_trabalho$tempo_preso)

## Gráfico de dispersão entre tempo_preso e score_periculosidade ----

plot(Base_trabalho$tempo_preso, Base_trabalho$score_periculosidade,
     main = "Dispersão: Tempo Preso vs Score de Periculosidade",
     xlab = "Tempo Preso",
     ylab = "Score de Periculosidade",
     pch = 16,
     col = "black")

## Correlação entre tempo_preso e score_periculosidade ----

cor(Base_trabalho$tempo_preso,
    Base_trabalho$score_periculosidade)

## Variância, desvio padrão e amplitude ----

### score_periculosidade ----

var(Base_trabalho$score_periculosidade, na.rm = TRUE)
sd(Base_trabalho$score_periculosidade, na.rm = TRUE)
max(Base_trabalho$score_periculosidade, na.rm = TRUE) - min(Base_trabalho$score_periculosidade, na.rm = TRUE)

### idade ----

var(Base_trabalho$idade, na.rm = TRUE)
sd(Base_trabalho$idade, na.rm = TRUE)
max(Base_trabalho$idade, na.rm = TRUE) - min(Base_trabalho$idade, na.rm = TRUE)

### tempo_preso ----

var(Base_trabalho$tempo_preso, na.rm = TRUE)
sd(Base_trabalho$tempo_preso, na.rm = TRUE)
max(Base_trabalho$tempo_preso, na.rm = TRUE) - min(Base_trabalho$tempo_preso, na.rm = TRUE)

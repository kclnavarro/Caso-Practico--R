library(tidyverse)

df <- read.csv("Titanicv2.csv")


colSums(is.na(df))


df %>% 
  group_by(Survived) %>%
  summarise(edad.promedio = mean(Age, na.rm = TRUE)) %>%
  ungroup() %>%
  arrange(desc(edad.promedio))

df %>%
  ggplot(aes(x=Age, fill = Survived)) + 
  geom_histogram(alpha=0.5)

df %>% 
  ggplot (aes(x=Sex, fill = Survived))+
  geom_bar()
  

df %>% 
  ggplot (aes(x=Pclass, fill = Survived))+
  geom_bar()

df %>% 
  group_by(Pclass) %>%
  summarise(
    total = n()
  ) %>% 
  ungroup()

df %>% 
  group_by(Sex) %>%
  summarise(
    total = n()
  ) %>% 
  ungroup()

df %>% 
  group_by(PassengerId) %>%
  summarise(
    total = n()
  ) %>% 
  ungroup()

df %>% 
  group_by(Pclass,Sex) %>%
  summarise(
    total = n(),
    no.survuved = sum(Survived == "No")
  ) %>% 
  ungroup()
  om_histogram(alpha=0.5)

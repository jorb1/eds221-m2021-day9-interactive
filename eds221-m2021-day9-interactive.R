install.packages("reprex")
library(reprex)
library(tidyverse)
library(palmerpenguins)


#create a reprex

ggplot(data = penguins,
       aes(x = bill_length_mm, y = flipper_length_mm)) |> #the example issue here is the pipe
  geom_point()
#make a mini data frame 
datapasta::df_paste(head(penguins, 3)[,c('bill_length_mm', 'flipper_length_mm')]) #if i run this it gives me a mini data frame!!

#this is my reprex
my_data <- data.frame(
  bill_length_mm = c(39.1, 39.5, 40.3),
  flipper_length_mm = c(181L, 186L, 195L))

ggplot(data = penguins,
       aes(x = bill_length_mm, y = flipper_length_mm)) |>
  geom_point()

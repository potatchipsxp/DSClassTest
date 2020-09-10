library(tidyverse)
library(gapminder)
library(plotly)

data(gapminder)
gapminder
?gapminder

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() + 
  facet_wrap((vars(continent)))

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = log10(pop))) + 
  geom_point() + 
  facet_wrap((vars(continent)))

ggplotly()

which.min(gapminder[,4])

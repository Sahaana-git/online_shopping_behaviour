library(ggplot2)
library(gganimate)
theme_set(theme_bw())

#install.packages("gapminder")
library(gapminder)
head(gapminder)


ggplot(
  gapminder, 
  aes(x = gdpPercap, y=lifeExp, size = pop, colour = country)
) +
  geom_point(show.legend = FALSE, alpha = 0.7) +
  scale_color_viridis_d() +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  labs(x = "GDP per capita", y = "Life expectancy") + transition_time(year) +
  labs(title = "Year: {frame_time}")



ggplot(
  gapminder,
  aes( x=SpecialDay,y=mean(Revenue), size = VisitorType, colour = Month)
       ) 


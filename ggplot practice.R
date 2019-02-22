library(ggplot2)

gapminder <- read.csv("data/gapminder_data.csv", header = TRUE) #header = TRUE preserves column names?

gapminder[1,1] # subsetting by [row,column]

gapminder[1, ]

head(gapminder) #looks at top of dataset
tail(gapminder) #looks at bottom

# Can look somewhere in the middle
gapminder[900:905, ] #looking at rows 900-905

# Scatterplot of life expectancy over GDP per capita, colored by continent
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point()

# Scatterplot of life expectancy over time, colored by continent
ggplot(data = gapminder, aes(x = year, y = lifeExp, col = continent)) + 
  geom_point()

# Line plot of life expectancy over time, separated by country, colored by continent (applied globally)
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country, col = continent)) + 
  geom_point()+
  geom_line()+
  theme_classic()

# Line plot of life expectancy over time, separated by country, line colored blue (applied locally)
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country)) + 
  geom_point()+
  geom_line(color = "maroon")+
  theme_classic()

# Scatterplot of life expectancy over GDP per capita, colored by continent
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point()

# Use scale (change x-axis) and alpha (change point transparency) funcitons to modify points
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(alpha = 0.5)+
  scale_x_log10()

# Add layer geom_smooth
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(alpha = 0.5)+
  scale_x_log10()+
  geom_smooth(method = "lm")

# Change line thickness
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(alpha = 0.5)+
  scale_x_log10()+
  geom_smooth(method = "lm", size = 1.5)

# Change size and color of points
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(alpha = 0.5, size = 3, shape = 16)+
  scale_x_log10()+
  geom_smooth(method = "lm", size = 1.5)

# Multi-panel
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(alpha = 0.5, size = 3, shape = 16)+
  scale_x_log10()+
  geom_smooth(method = "lm", size = 1.5)+
  facet_wrap(~continent)

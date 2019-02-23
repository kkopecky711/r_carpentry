# Learning about dplyr package

gapminder <- read.csv("data/gapminder_data.csv")

# subset in base R
gapminder[gapminder$continent=="Africa", "gdpPercap" ]

# apply a function (mean) to this subset
mean(gapminder[gapminder$continent=="Africa", "gdpPercap" ])

library(dplyr)

# Select columns

year_country_gdp <- gapminder %>% select(year,country,gdpPercap)

# Select rows

year_country_gdp_africa <- gapminder %>% filter(continent=="Africa")
  

# Combine
year_country_gdp_africa <- gapminder %>% 
  filter(continent=="Africa") %>% 
  select(year,country,gdpPercap)

# summarise by groups
gdp_by_continents <- gapminder %>% 
  group_by(continent) %>% 
  summarize(mean_gdp=mean(gdpPercap))

# average life expectancy by country
life_exp_country <- gapminder %>%
  group_by(country) %>% 
  summarize(mean_le=mean(lifeExp))

# max and min of above using filter
 life_exp_country %>% filter(mean_le==min(mean_le))
 life_exp_country %>% filter(mean_le==max(mean_le))
 
 # Alternative methods (using arrange)
 life_exp_country %>% arrange(mean_le)
 life_exp_country %>% arrange(desc(mean_le))
 
 life_exp_country %>% arrange(mean_le) %>% head()
 
 # using base R
 life_exp_country[life_exp_country$mean_le==max(life_exp_country$mean_le)]

 # Use count to find the number of rows
 unique(gapminder$year) #shows unique values for a vector
 
 gapminder %>% 
   filter(year==2007) %>% 
   count(continent)
 
 # Perform more than one function inside summarize
 gapminder %>% 
   group_by(continent) %>% 
   summarize(
     mean_life = mean(lifeExp),
     se_life = sd(lifeExp)/sqrt(n())
   )
 
 # Using mutate
 gdp_pop_summary <- gapminder %>% 
   mutate(gdp_billions = gdpPercap*pop/10^9) %>% 
   group_by(continent, year) %>% 
   summarise(mean_gdp_billions = mean(gdp_billions))
 
 

  
  
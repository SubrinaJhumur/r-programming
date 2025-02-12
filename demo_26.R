5+6
a<-6
b<-7
a+b
a<-9
b<-78
a+b
sum(a,b)
ages<- c(5,6)
sum(ages)
mean(ages)
max(ages)
minages
min(ages)
std(ages)
names<- c('jhon','james')
friends<- data.frame(names,ages)
view(friends)
View(friends)
dim(friends)
str(friends)
friends$names
friends$ages
friends[1,1]
friends[1,]
friends[,1]
data()
View(starwars)
library(tidyverse)
starwars %>% 
  filter(height>150 & mass<200) %>% 
  mutate(height_in_meters=height/100) %>% 
  select(height_in_meters, mass) %>% 
  arrange(mass) %>% 
  View() %>% 
  plot()


install(tidyverse)
library(tidyverse)
View(starwars)
starwars %>% 
  filter(height>150 & mass<200) %>%
  mutate(height_in_meters=height/100) %>% 
  select(height_in_meters,mass) %>% 
  arrange(mass) %>% 
  #View() %>% 
  plot()



View(msleep)
glimpse(msleep)
dim(msleep)
str(msleep)
glimpse(msleep)
head(msleep)
tail(msleep)
class(msleep$name)
length(msleep)
unique(msleep$vore)
names(msleep)
View(msleep)
unique(msleep$genus)
dim(msleep)
missing<- !complete.cases(msleep)
msleep[missing, ]
missing<- !complete.cases(msleep)
msleep[missing, ]


View(starwars)
names(starwars)
starwars %>% 
  select(name, height, mass, hair_color, skin_color)


starwars %>% 
  select(1:6)
starwars %>% 
  select(ends_with('color')) %>% 
  View()

starwars %>% 
  select(ends_with('color')) %>% 
  View()
starwars %>% 
  select(name, height, mass, height, everything()) %>% 
  View()
starwars %>% 
  select(name, height, mass)
starwars %>% 
  select(1:3)
starwars %>% 
  select(ends_with('color'))
starwars %>% 
  select(name, mass, height, everything()) %>% 
  View()
starwars %>% 
  rename('characters'='name') %>% 
  head()
View(starwars)
starwars %>% 
  rename('length'='height') %>% 
  head()
View(starwars)
starwars$hair_color<- as.factor(starwars$hair_color)
class(starwars$hair_color)
starwars$hair_color
class(starwars$hair_color)
starwars %>% 
  mutate(hair_color=as.character(hair_color)) %>% 
  glimpse()
starwars %>% 
  mutate(hair_color=as.factor(hair_color)) %>% 
  glimpse()
starwars %>% 
  mutate(hair_color=as.character(hair_color)) %>% 
  glimpse()
df<-starwars
df$sex<- as.factor(df$sex)
glimpse(df)
View(df)
str(df)
glimpse(df)
df$sex<- as.character(df$sex)
glimpse(df)
levels(df$sex)
levels(df$sex)
df$sex<- as.factor(df$sex)
glimpse(df)
levels(df$sex)
df<- df %>% 
  mutate(sex=factor(sex,
                    levels=c('male','female',
                             )))
levels(df$sex)

df<- df %>% 
  mutate(sex=factor(sex,
                    levels=c('male','female',"hermaphroditic","none")))
levels(df$sex)
starwars %>% 
  select(mass, sex) %>% 
  filter(mass<55 &
           sex=='male')
View(starwars)
names(starwars)

starwars %>% 
  select(mass, sex, skin_color) %>% 
  filter(mass<55 &
           sex=='male' &
            skin_color='fair')
starwars %>% 
  select(sex) %>% 
  mutate(sex=recode(sex,
               'male'='man',
               'female'='women'))


names(starwars)
starwars %>% 
  select(sex) %>% 
  mutate(sex=recode(sex,
                    'male'='man',
                    'female'='woman'))
mean(starwars$height,na.rm=TRUE)
head(starwars)
mean(starwars$height, na.rm=TRUE)
max(starwars$height, nam.rm=TRUE)
max(starwars$height)
head(starwars)
min(starwars$mass, na.rm=TRUE)
max(starwars$mass, na.rm=TRUE)
mean(starwars$mass, na.rm=TRUE)
var(starwars$mass, na.rm=TRUE)
IQR(starwars$mass, na.rm=TRUE)

glimpse(starwars)
summary(starwars)
summary(heifht)
summary(starwars$mass)
starwars %>% 
  mutate(height_m=height/100) %>% 
  select(name, height, height_m)
View(starwars)
starwars %>% 
  mutate(height_m=height/100) %>% 
  select(name, height, height_m)

starwars %>% 
  mutate(height_m=height/100) %>% 
  select(name, height, height_m) %>% 
  mutate(tallness=
           if_else(height_m<1,
                   'short',
                   'tall'))
starwars %>% 
  mutate(height_m=height/100) %>% 
  select(name, height, height_m) %>% 
  mutate(tallness=
           if_else(height_m<1,
                   'short',
                   'tall'))
head(starwars)
starwars %>% 
  mutate(height_m=height/100) %>% 
  select(name, height, height_m, mass) %>% 
  mutate(mass_weight=
           if_else(mass<50,
                   'slim',
                   'weighted'))
library((gapminder))
View(gapminder)
library(gapminder)
View(gapminder)
data<-select(gapminder, country, year, lifeExp)
data
View(data)
View(gapminder)
df<-select(gapminder, country, pop, lifeExp, year)
df

wide_data<- df %>% 
  pivot_wider(names_from=year, values_from=lifeExp)
View(wide_data)

























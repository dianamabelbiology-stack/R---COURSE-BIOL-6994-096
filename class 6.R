
  
install.packages("dplyr")

library(dplyr)

data("starwars")
head(starwars, 3)
View(starwars)

str(starwars)


starwars %>% 
  filter(species == "Droid")

subset(starwars, species== "Droid")


filter(starwars,
       species == "Droid")

starwars %>% 
  filter(skin_color== "light",
         eye_color== "brown" & 
           hair_color == "black")

starwars %>% 
  arrange(height, mass)

starwars %>% 
  arrange(desc(height))


starwars %>% 
  slice(5:10)

starwars %>% 
  slice_head(n=8)

starwars %>% 
  select(name, hair_color, skin_color, eye_color) %>% filter( skin_color == "white")

starwars %>% 
  select(!name & !skin_color)

starwars %>% 
  dplyr::rename(character = name)

# selec () --------------------------------------------------------------------

starwars %>% 
  select(!name & !skin_color)

starwars %>% 
  select(-name, -skin_color)

starwars %>% 
  select(1, 2, species) %>% 
  filter(species== "Droid")


starwars %>% 
  select(starts_with('na'))

starwars %>% select(ends_with('or'))

starwars %>% 
  dplyr::rename(Character = name)

starwars %>% select(conteins('c'))

starwars %>% 
  mutate(height_cat = ifelse(height > 100))




# Mutate -----------------------------------------------------
starwars %>% 
  mutate(new_col= height/100) %>% 
  select(new_col, height, everything())

starwars %>% 
  mutate(new_col= height/100,
         .keep = 'none')

newstarwars <- starwars %>% 
  mutate(height_m = height / 100)

newstarwars %>% 
  select(height_m)

starwars %>% 
  mutate(heigth_cat= ifelse(height >100,
                            "tall",
                            "small")) %>% 
  select(height, heigth_cat, everything())

library(ggplot2)

starwars %>% 
  mutate(height_cat = ifelse(height > 100,
                            "tall", "small")) %>% 
    ggplot(aes(x=height, fill= height_cat )) + 
  geom_histogram() +
  labs(x='height', y='cm')

starwars %>%  
  summarise(mean = mean(height, na.rm = TRUE) ,
            min= min(height, na.rm=TRUE) ,
            max= max(height, na.rm= TRUE) ,
            sd= sd(height, na.rm=TRUE))


starwars %>% 
  group_by(species) %>% 
  summarise( 
    mean= mean(mass, na.rm = TRUE) , 
    sd= sd(mass, na.rm=TRUE))

starwars %>% 
  group_by(species) %>% 
  count(homeworld)

starwars_new <- starwars %>%
  
starwars %>% 
  

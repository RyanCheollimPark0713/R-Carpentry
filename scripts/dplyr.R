library(dplyr)
library(tidyr)

interviews <- read_csv("./data/SAFI_clean.csv", na = "NULL")

select_col <- select(interviews, village, no_membrs, years_liv)
god_data <- filter(select_col, village == "God", no_membrs > 6)

# Pipes
interviews %>% 
  select(village, no_membrs, years_liv) %>% 
  filter(village == "God", no_membrs > 6) -> god_data_2

summary(god_data)
summary(god_data_2)

# Exercise
interviews %>% 
  filter(memb_assoc == "yes") %>% 
  select(affect_conflicts, liv_count, no_meals) -> memb_assoc_data


Interviews_ppl_room <- interviews %>%
  filter(memb_assoc == "yes") %>%
  mutate(people_per_room = no_membrs / rooms)     # create a new column

Total_meals <- interviews %>%
  mutate(total_meals = no_membrs * rooms) %>%
  filter(total_meals > 5) %>%
  select(village, total_meals)































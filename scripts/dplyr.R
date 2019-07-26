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



















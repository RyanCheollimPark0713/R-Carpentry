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
  mutate(people_per_room = no_membrs * no_meals)     # create a new column

total_meals <- interviews %>%
  mutate(total_meals = no_membrs * no_meals) %>%     # create a new column
  filter(total_meals > 20) %>%
  select(village, total_meals)



interviews %>%
  group_by(village) %>%
  summarise(mean_no_membrs = mean(no_membrs))

interviews %>%
  group_by(village, memb_assoc) %>%
  summarise(mean_no_membrs = mean(no_membrs))

interviews %>%
  group_by(village, memb_assoc) %>%
  summarise(mean_no_membrs = mean(no_membrs), min_no_membrs = min(no_membrs))

interviews %>%
  filter(!is.na(memb_assoc)) %>%
  group_by(village, memb_assoc) %>%
  summarise(mean_no_membrs = mean(no_membrs), min_no_membrs = min(no_membrs)) %>%
  arrange(desc(mean_no_membrs))            # descending order

interviews %>% count(village, sort = TRUE) # descending order

# Exercise
interviews %>%
  group_by(village) %>%
  summarise(
    mean = mean(no_membrs), 
    max = max(no_membrs), 
    min = min(no_membrs),
    n = n()
  )


# Spread and Gather
interviews_spread <- interviews %>%
  mutate(wall_type_logical = TRUE) %>%
  spread(key = respondent_wall_type, value = wall_type_logical, fill = FALSE)


interviews_gather <- interviews_spread %>%
  gather(key = "respondent_wall_type", value = "wall_type_logical",
         burntbricks:sunbricks) %>%
  filter(wall_type_logical == TRUE) %>%
  select(-wall_type_logical)















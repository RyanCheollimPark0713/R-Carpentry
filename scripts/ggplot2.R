library(tidyverse)
library(ggplot2)

Interviews_plotting <- readRDS("~/R/R-Carpentry/data/Interviews_plotting.rds")

## ggplot(data = <data>, mapping = aes(<MAPPINGS>)) + <GEOM_FUNCTION>()

# Point and Jitter plot
ggplot(data = Interviews_plotting, 
       mapping = aes(x = no_membrs, y = number_items)) + 
  geom_point(alpha = 0.4)

ggplot(data = Interviews_plotting, 
       mapping = aes(x = no_membrs, y = number_items)) + 
  geom_jitter(alpha = 0.4)

ggplot(data = Interviews_plotting, 
       mapping = aes(x = no_membrs, y = number_items)) + 
  geom_jitter(alpha = 0.4, color = "blue")

ggplot(data = Interviews_plotting, 
       mapping = aes(x = no_membrs, y = number_items, color = village)) + 
  geom_jitter(alpha = 0.4)

# Exercise
ggplot(data = Interviews_plotting, 
       mapping = aes(x = village, y = rooms, color = respondent_wall_type)) + 
  geom_jitter(alpha = 0.4)


# Box plot
ggplot(data = Interviews_plotting,
       aes(x = respondent_wall_type, y = rooms)) +
  geom_boxplot(alpha = 0, color = "blue") +
  geom_jitter(alpha = 0.5, color = "tomato", width = 0.2)

ggplot(data = Interviews_plotting,
       aes(x = respondent_wall_type, y = rooms)) +
  geom_jitter(alpha = 0.5, color = "tomato", width = 0.2) +
  geom_boxplot(alpha = 0, color = "blue")

# Exercise (violin plot)
ggplot(data = Interviews_plotting,
       aes(x = respondent_wall_type, y = rooms)) +
  geom_jitter(alpha = 0.5, color = "tomato", width = 0.2) +
  geom_violin(alpha = 0, color = "blue")

ggplot(data = Interviews_plotting,
       aes(x = respondent_wall_type, y = liv_count)) +
  geom_jitter(alpha = 0.5, color = "tomato", width = 0.2) +
  geom_boxplot(alpha = 0, color = "blue")

ggplot(data = Interviews_plotting,
       aes(x = respondent_wall_type, y = liv_count)) +
  geom_jitter(alpha = 0.5, width = 0.2, height = 0.1, aes(color = memb_assoc)) +
  geom_boxplot(alpha = 0)


# Bar plot
ggplot(Interviews_plotting,
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village))

ggplot(Interviews_plotting,
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village), position = "dodge")    # side by side

ggplot(Interviews_plotting,
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village), position = "dodge") +
  labs(x = "Wall Type", y = "Count") +
  facet_grid(memb_assoc~village) +
  theme(axis.text.x = element_text(angle = 90))







# Load required packages
# install.packages("tidyverse")
library(tidyverse)

print("Hello, World")

(area_hectares <- 1.0)
1.0 -> area_hectares

area_hectares <- 2.5               # land area in hectares
area_acres <- 2.47 * area_hectares # convert to acres
area_acres                         # print

length <- 2.5
width <- 3.2
area <- length * width
area

# functions
# b <- sqrt(x = a)

round(3.14159)
round(3.14159, digits = 2)
round(digits = 2, x = 3.14159)

no_of_members <- c(3, 7, 10, 6)
length(no_of_members)
class(no_of_members)
str(no_of_members)

respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")
length(respondent_wall_type)
class(respondent_wall_type)
str(respondent_wall_type)

possessions <- c("bicycle", "radio", "television")
possessions <- c(possessions, "mobile_phone")
possessions <- c("car", possessions)

c(TRUE, TRUE, FALSE)
typeof(possessions)

num_char <- c(1, 2, 3, "a")
typeof(num_char)
num_char

num_logical <- c(1, 2, 3, FALSE)
typeof(num_logical)
num_logical

char_logical <- c("a", "b", "c", TRUE)
typeof(char_logical)
char_logical

tricky <- c(1, 2, 3, "4")
tricky

combined_logical <- c(num_logical, char_logical)
combined_logical

# subseting

respondent_wall_type[2]
respondent_wall_type[c(3, 2)]

more_respondent_wall_type <- respondent_wall_type[c(1,2,3,2,1,3)]
more_respondent_wall_type











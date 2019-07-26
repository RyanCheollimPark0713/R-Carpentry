library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv", na = "NULL")
view(interviews)
interviews

dim(interviews)
nrow(interviews)
ncol(interviews)

dim(interviews)[1] == nrow(interviews)
dim(interviews)[-2] == nrow(interviews)
dim(interviews)[2] == ncol(interviews)
dim(interviews)[-1] == ncol(interviews)

head(interviews)
tail(interviews)

head(as.data.frame(interviews))
tail(as.data.frame(interviews))

names(interviews)           # column name
str(interviews)             # structure
summary(interviews)         # column summary


interviews[1,1]
interviews[1,6]
interviews[5, ]             # 5th row
interviews[ ,2]             # 2nd column
interviews[2]               # 2nd column

interviews[ ,1:3]           # first 3 columns
interviews[1:3]             # first 3 columns
interviews[1:3, 1:5]        # first 3 rows and first 5 columns

interviews_no_id <- interviews[ ,-1]
interviews_no_id

interviews_no_village <- interviews[ ,-2]
interviews_no_village

interviews[ ,-(1:2)]        # excluding column 1 and 2


# Exercise

# 1
interviews_100 <- interviews[1:100, ]
interviews_100

# 2
n_rows <- nrow(interviews)
n_rows
interviews_last <- interviews[n_rows, ]
interviews_last
tail(interviews, n=1)

# 3
middle_idx <- ceiling(n_rows/2)
middle_idx
interviews_middle <- interviews[middle_idx, ]
interviews_middle

# 4
interview_head <- interviews[-(7:n_rows), ]
interview_head
head(interviews)


# Factors

floor_type <- factor(c("earth", "cement", "cement", "earth"))
levels(floor_type)
nlevels(floor_type)

floor_type <- factor(c("earth", "cement", "cement", "earth"), 
                     levels = c("earth", "cement"))                # reordering

levels(floor_type)[2] <- "brick"
levels(floor_type)
floor_type

as.character(floor_type)
as.numeric(floor_type)


year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
year_fct
as.numeric(year_fct)
as.character(year_fct)
as.numeric(as.character(year_fct))
as.numeric(levels(year_fct))[year_fct]

table(year_fct)
summary(year_fct)
















# install.packages(c("tidyverse",
#                    "here",
#                    "haven"))

pacman::p_load(tidyverse, 
               here, 
               haven)


# Read SPSS .sav file
data <- read_sav(here("data/OPD DATA ENTRY_5.sav"))

# Inspect
View(data)
str(data)

# Export as CSV
write.csv(data,
          here("data/data.csv"), 
          row.names = FALSE)


library(palmerpenguins)

head(penguins)

# Specify options for the inputs outside of the code manually
options_sex <- c("male", "female", "NA") # look at unique(penguins$sex)

# Specify options for the inputs outside of the code using the options in the data
option_species <- penguins$species |> unique() |> sort()
option_islands <- penguins$island  |> unique() |> sort()


# Modify these vectors as your please - e.g. to add an overall
option_species_all <- c("Overall", option_species)


# Allow for different options for the input from the user and used in R for the behind the scenes
# e.g. using option_islands in the shiny app now will show the users the options "Biscoe Island",
# "Dream Island", and "Torgersen Island". But these are less useful for filtering the data directly because
# in the data the options are just Biscoe, Dream and Torgersen. So by naming the vector,
# the full names are shown to the user and the short names are available in R
names(option_islands) <- paste0(option_islands, " Island")

# Or do this manually
options_sex <- c("Male" = "male",
                 "Female" = "female",
                 "Unknown" = NA)
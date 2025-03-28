# Useful pieces of code to set up for data visualisations
library(ggplot2)


# Plot themes ------------------------------------------------------------------
# set the ggplot theme. In this case it is as black and white
theme_set(
  theme_bw()
)

# write custom ggplot themes
theme_plots_basic <- 
  theme(axis.text.x = element_text(size = 12),
                 legend.position = "right",
                 panel.grid.minor = element_blank()
  )

theme_map_void <-
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
    
  )


### Colour palette ------------------------------------------------------------------------------------------------------------------
# The spare colours are commented out
# if new categories are added in the data, need to add them to the colour palette

custom_pal <- list(
  
  ## For heat map
  `heat`  = c(
    `green`         = "#629c25",
    `yellow orange` = "#FFF100",
    `orangy yellow` = "#FFD100",
    `orange`        = "#fc8105",
    `dark orange`   = "#e34f00",
    `red`           = "#ff0000",
    `red2`          = "#db0000",
    `dark red`      = "#C00004",
    `deep dark red` = "#810000",
    `almost black`  = "#410000"),
  
  ## For heat map - colour-blind friendly
  `heat_CBfriendly` = c(
    `teal`          = "#57C4AD",
    `yellow orange` = "#E6E1BC",
    `orangy yellow` = "#E6BD85",
    `orange`        = "#EDA247",
    `dark orange`   = "#ED8047",
    `burnt orange`  = "#DB4325",
    `red`           = "#db0000",
    `dark red`      = "#C00004",
    `deep dark red` = "#810000",
    `almost black`  = "#410000"),
)


# To use a custom palette on a continuous variable,
# you can either use the leaflet package shown below to make a new custom pallette function
# or use it with ggplot::scale_colour_gradientn

# # For leaflet:
# library(leaflet)
# pal_heat_numeric   <- leaflet::colorNumeric(custom_pal$heat, domain = 0:100)
# pal_heatCB_numeric <- leaflet::colorNumeric(custom_pal$heat_CBfriendly, domain = 0:100)













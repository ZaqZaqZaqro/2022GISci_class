# Aim: demonstrate spatial joins ------------------------------------------
library(sf)
library(spData)
library(tmap)
# names(world)
# names(urban_agglomerations)
# Question arising from the data:
# what % of country populations lived in their largest agglomerations?
# explanation: we're joining the point data onto world

if(!exists("random_joined")) {
  set.seed(2018)
  bb_world = st_bbox(world)
  random_df = tibble::tibble(
    x = runif(n = 10, min = bb_world[1], max = bb_world[3]),
    y = runif(n = 10, min = bb_world[2], max = bb_world[4])
  )
  random_points = st_as_sf(random_df, coords = c("x", "y")) %>% 
    st_set_crs(4326)
  
  world_random = world[random_points, ]
  random_joined = st_join(random_points, world["name_long"])
  
}

untibble = function(x) structure(x, class = setdiff(class(x), c("tbl_df", "tbl")))

# summary(random_joined$name_long) # factors still there
random_joined$name_long = as.character(random_joined$name_long)
random_points <- untibble(random_points)

jm0 = tm_shape(world) + tm_borders(lwd = 0.2) + tm_format("World")

jm1 = jm0 +
  tm_shape(shp = random_points, bbox = bb_world) +
  tm_symbols(col = "black", shape = 4, border.lwd = 2) +
  tm_layout(scale = 1, legend.bg.color = "white", legend.bg.alpha = 0.3, legend.position = c("right", "bottom"))

jm2 = jm0 +
  tm_shape(untibble(world_random), bbox = bb_world) +
  tm_fill(col = "name_long", palette = "Dark2") +
  tm_layout(legend.show = FALSE)
  #tm_borders(col = "name_long", lwd = 4) + # issue with tmap: no variable border
  # tm_layout(scale = 1, legend.bg.color = "white", legend.bg.alpha = 0.3, legend.position = c("right", "bottom"))

jm3 = jm0 +
  tm_shape(shp = untibble(random_joined), bbox = bb_world) +
  tm_symbols(col = "name_long", shape = 4, border.lwd = 2, palette = "Dark2") +
  tm_layout(legend.show = FALSE)
# +
#   tm_layout(scale = 1, legend.bg.color = "white", legend.bg.alpha = 0.3, legend.position = c("right", "bottom"))

jm4 = jm0 +
  tm_shape(shp = untibble(random_joined), bbox = bb_world) +
  tm_symbols(col = "name_long", shape = 4, border.lwd = 2, palette = "Dark2") +
  tm_layout(legend.only = TRUE)

# tmap_arrange(jm1, jm2, jm3, jm4, nrow = 2, ncol = 2)


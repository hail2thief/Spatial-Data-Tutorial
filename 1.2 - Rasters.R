## 1.2 Rasters
rm(list=ls())
library(raster)

# basic raster
basic_raster <- raster(ncol = 5, nrow = 10, xmn = 0, xmx = 5, ymn = 0, ymx = 10)
basic_raster

# this raster has grid but no data
hasValues(basic_raster)

# add values
values(basic_raster) <- 1:50  # Note 50 is the total number of cells in the grid. 
plot(basic_raster)

#To define a projection, we use the same proj4 strings as vector data, but without the intermediate step of creating a CRS object:
projection(basic_raster) <- "+init=EPSG:4326"

# raster package also has a big library of projections. Here is San Fran
raster_from_file <- raster("/Users/juanftellez/OneDrive/Spatial-Data-Tutorial/RGIS1_Data/SanFranciscoNorth.dem")
plot(raster_from_file)

raster_from_file



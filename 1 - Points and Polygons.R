### Eubanks Data Tutorial
rm(list=ls())
library(sp)

# create polyon objects from coordinates.  Each object is a single geometric
# polygon defined by a bounding line.
house1.building <- Polygon(rbind(c(1, 1), c(2, 1), c(2, 0), c(1, 0)))

house1.roof <- Polygon(rbind(c(1, 1), c(1.5, 2), c(2, 1)))

house2.building <- Polygon(rbind(c(3, 1), c(4, 1), c(4, 0), c(3, 0)))

house2.roof <- Polygon(rbind(c(3, 1), c(3.5, 2), c(4, 1)))

house2.door <- Polygon(rbind(c(3.25, 0.75), c(3.75, 0.75), c(3.75, 0), c(3.25, 
                                                                         0)), hole = TRUE)

# create lists of polygon objects from polygon objects and unique ID A
# `Polygons` is like a single observation.
h1 <- Polygons(list(house1.building, house1.roof), "house1")
h2 <- Polygons(list(house2.building, house2.roof, house2.door), "house2")

# create spatial polygons object from lists A SpatialPolygons is like a
# shapefile or layer.
houses <- SpatialPolygons(list(h1, h2))
plot(houses)

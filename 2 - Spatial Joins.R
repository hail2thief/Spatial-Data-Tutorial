#### Spatial Joins
rm(list=ls())
library(readr)
library(rgdal)
# read
vote_shares = read_csv("/Users/juanftellez/Downloads/RGIS2_Data/district_vote_shares.csv")
districts = readOGR(dsn = "/Users/juanftellez/Downloads/RGIS2_Data/shapefiles/", 
                    layer = "congressional_districts")

# find ID variable
names(vote_shares)
names(districts)

# join them based on ID
mrg = merge(vote_shares, districts, by.x = "DISTRICT", by.y = "DISTRICT")

# plot
spplot(mrg, "dem_vote_share")

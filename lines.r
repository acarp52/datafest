library(maptools)
library(geosphere)

data(wrld_simpl)

US_lat = 40.839569
US_lon = -73.881505

SWE_lat = 33.254235
SWE_lon = 126.488397

points = gcIntermediate(c(SWE_lon, SWE_lat), c(US_lon, US_lat), 100)

dev.new(width=6, height=4)
plot(wrld_simpl)
lines(points, col='red')
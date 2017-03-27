# From bash:
# head -1 data.txt > subset.txt
# perl -ne 'print if (rand() < .01)' data.txt >> subset.txt

sampDF = read.csv(file="subset.txt", header = TRUE, sep = "\t")


sampDF$distance.f <- as.numeric(factor(sampDF$distance_band , levels=c("VC", "C", "M", "F", "VF")))
sampDF$hist_price.f <- as.numeric(factor(sampDF$hist_price_band , levels=c("VL", "L", "M", "H", "VH")))
sampDF$popularity.f <- as.numeric(factor(sampDF$popularity_band , levels=c("VL", "L", "M", "H", "VH")))
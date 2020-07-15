
## read trpv1 file
trpv1 <- read.delim("~/mydemo/trpv1.tsv", header=FALSE)
##extract low quality associations with combined score <0.5

trpv1.low <- trpv1[trpv1$V15<0.5, c(1,2,15),drop=FALSE]
trpv1.high <- trpv1[trpv1$V15>0.5, c(1,2,15),drop=FALSE]

## save files

write.csv(trpv1.low, "trpv1 - low associations.csv")
write.csv(trpv1.high, "trpv1 - high associations.csv")

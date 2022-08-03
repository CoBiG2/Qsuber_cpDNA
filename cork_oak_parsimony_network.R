# this script was written by Filipe de Sousa based on the PEGAS manual (Paradis 2021) and on the suggestions made in "https://johnbhorne.wordpress.com/2016/09/15/still-making-haplotype-networks-the-old-way-how-to-do-it-in-r/"


library(ape)
library (pegas)

dna <-read.dna("concat_4cploci_3.fasta", format = "fasta")

hap<-haplotype(dna)

net<-haploNet(hap)

ind.hap<-with(stack(setNames(attr(hap, "index"), rownames(hap))), table(hap=ind, individuals=rownames(dna)[values]))

mydata <- as.data.frame(ind.hap)

good <- mydata[mydata$Freq == 1,]

locations <- strsplit(as.character(good$individuals), "_")

locations <- sapply(locations, "[[", 1)

new.hap <- table(good$hap, locations)


# to make the plot:

plot(net, size=2, scale.ratio = 2, fast=TRUE, show.mutation=1, threshold=0, labels=FALSE, pie=new.hap, legend=c(-90,50))

# to replot by hand:

#o<-replot()


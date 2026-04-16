

# P-distances
library(ape)
# Set your directory !
#setwd('~/mussel_epibonts/data/phylo/alignments')

align<-read.dna('epibionts_pdist.phy', format = "sequential")
raw_pdist <- dist.dna(align, model = "raw", variance = FALSE,
         gamma = FALSE, pairwise.deletion = FALSE,
         as.matrix = TRUE)
write.csv(raw_pdist,'Pdistances/raw_pdist.csv')

k80_pdist <- dist.dna(align, model = "K80", variance = FALSE,
                      gamma = FALSE, pairwise.deletion = FALSE,
                      as.matrix = TRUE)
write.csv(raw_pdist,'Pdistances/k80_pdist.csv')


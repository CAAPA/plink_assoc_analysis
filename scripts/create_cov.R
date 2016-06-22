args <- commandArgs(trailingOnly = TRUE)
cohort <- args[1]
fam.file.name <- paste0("../data/input/", cohort, "/fam.fam")
pca.file.name <- paste0("../data/input/", cohort, "/pca.csv")
out.file.name <- paste0("../data/input/", cohort, "/cov.txt")

fam <- read.table(fam.file.name)
fam$ORDER <- 1:dim(fam)[1]
pca <- read.csv(pca.file.name, head=T)

pca$MERGE_ID <- substring(pca$PATIENT, 3, 18)
fam$MERGE_ID <- substring(fam$V2, 0, 16)

cov <- merge(pca, fam)
cov <- cov[order(cov$ORDER),c("V1", "V2", "PC1", "PC2", "PC3")]
names(cov)[1:2] <- c("FID", "IID")

write.table(cov, out.file.name, sep="\t", quote=F, row.names=F, col.names=T)

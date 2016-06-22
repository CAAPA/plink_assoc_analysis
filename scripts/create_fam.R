args <- commandArgs(trailingOnly = TRUE)
cohort <- args[1]
in.fam.name <- args[2]
pheno.name <- args[3]
remove.list.name <- paste0("../data/input/", cohort, "/remove_ids.txt")
out.fam.name <- paste0("../data/input/", cohort, "/fam.fam")

#Add the phenotype to the fam file
fam <- read.table(in.fam.name)
pheno <- read.table(pheno.name)
names(pheno)[3] <- "PHENO"
fam$ORDER <- 1:dim(fam)[1]
fam <- merge(fam, pheno)
fam <- fam[order(fam$ORDER),]

#Set the phenotypes of related individuals to remove to missing
remove.ids <- read.table(remove.list.name)
fam$PHENO[substring(fam$V2, 1, 16) %in% remove.ids$V1] <- -9

write.table(fam[,c(1:5,8)], out.fam.name,
            sep="\t", quote=F, row.names=F, col.names=F)
install.packages("BiocManager")
BiocManager::install(version = "3.18")
BiocManager::install(c(
  "memes",
  "BSgenome.Hsapiens.UCSC.hg19",
  "GenomicRanges",
  "Biostrings"
))

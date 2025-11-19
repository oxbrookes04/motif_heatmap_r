library(memes)
library(BSgenome.Hsapiens.UCSC.hg19)
library(GenomicRanges)
library(Biostrings)

# Load BED-like file
bed <- read.delim("Motif_windows_30bp.tsv", header = TRUE)

# Convert to GRanges
gr <- GRanges(seqnames = bed$Chr,
              ranges = IRanges(start = bed$Start, end = bed$End),
              strand = bed$motif_strand,
              gene = bed$gene)

# Load genome
genome <- BSgenome.Hsapiens.UCSC.hg19

# Extract sequences
seqs <- get_sequence(gr, genome)

# Plot motif-centered heatmap
plot_sequence_heatmap(seqs)

FROM rocker/r-ver:4.3.1

RUN R -e "install.packages('BiocManager'); \
          BiocManager::install(version='3.18'); \
          BiocManager::install(c('memes','BSgenome.Hsapiens.UCSC.hg19','GenomicRanges','Biostrings'))"

COPY . /home/rstudio

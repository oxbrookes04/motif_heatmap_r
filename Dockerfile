FROM rocker/r-ver:4.3.1

# Install Bioconductor and required packages
RUN R -e "install.packages('BiocManager'); \
          BiocManager::install(version='3.18'); \
          BiocManager::install(c('memes','BSgenome.Hsapiens.UCSC.hg19','GenomicRanges','Biostrings'))"

# Copy repo contents into container
COPY . /home/rstudio

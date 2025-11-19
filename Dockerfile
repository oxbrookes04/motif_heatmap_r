FROM rocker/r-ver:4.3.1

# Install Python so Binder/Jupyter doesn't fail
RUN apt-get update && apt-get install -y python3 python3-pip

# Install Bioconductor packages
RUN R -e "install.packages('BiocManager'); \
          BiocManager::install(version='3.18'); \
          BiocManager::install(c('memes','BSgenome.Hsapiens.UCSC.hg19','GenomicRanges','Biostrings'))"

COPY . /home/rstudio

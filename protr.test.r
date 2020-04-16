library(protr)
library("GOSemSim")
library("Biostrings")
library("org.Hs.eg.db")
library(seqinr)

getwd()
setwd("/home/mcc/Desktop")
# load FASTA files
mgb <- readFASTA(system.file("/home/mcc/Desktop/uniprot-myoglobin.fasta",
                             package = "protr"))
library(rlang)
# if (!requireNamespace("BiocManager", quietly = TRUE))
#     install.packages("BiocManager")
# BiocManager::install("GOSemSim")
# BiocManager::install("Biostrings")
# BiocManager::install("org.Hs.eg.db")
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("BiocGenerics")
BiocManager::install("org.Hs.eg.db")

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("ChemmineR")


if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("fmcsR")


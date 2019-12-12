library(ggVennDiagram)
genes <- paste("gene",1:1000,sep="")
set.seed(10100)
x <- list(A=sample(genes,300),B=sample(genes,325),C=sample(genes,440),D=sample(genes,450))

# four dimension Venn plot
ggVennDiagram(x)

ggVennDiagram(x[1:3])

ggVennDiagram(x[1:2])

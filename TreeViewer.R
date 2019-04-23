#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

# test if there is at least one argument: if not, return an error
if (length(args)==0) {
  stop("At least one argument must be supplied (input file).n", call.=FALSE)
} else if (length(args)==1) {
  # default output file
  args[2] = "out.pdf"
}


library(phytools)

# Reading input tree file path
tree <- read.tree(file = args[1])
# Plotting & saving to pdf
pdf(args[2])
plot.phylo(tree, type = "phylogram", show.node.label = T)
devoff <- dev.off()

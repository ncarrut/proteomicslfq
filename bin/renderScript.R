.libPaths("D:/ncarrut/Documents/R/win-library/4.0")

require(rmarkdown)
require(yaml)
require(stringr)

args = commandArgs(trailingOnly=TRUE)

print(args)

usage <- "Rscript edgeRspectralCounting.R sdrf.tsv input.mztab"
if (length(args)<2) {
  print(usage)
  stop("At least the first two arguments must be supplied (input sdrf and input mzTab).n", call.=FALSE)
}

rmarkdown::render("spectralCounting.RMD", 
                  params = list(sdrfInput = args[1],
                                mzTabInput = args[2]))


#"D:\\ncarrut\\Documents\\work\\1824-1865\\fullyTrypticRes\\proteomics_lfq\\out.mzTab"
#"D:\\ncarrut\\Documents\\work\\1824-1865\\sdrf.tsv"

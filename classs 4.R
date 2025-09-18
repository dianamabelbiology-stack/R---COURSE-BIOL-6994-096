
codon_usage <- read.csv("codon_usage.csv")
head(codon_usage)

str(codon_usage)

viral <- codon_usage[codon_usage$Kingdom == "vrl", ]
head(viral,3)

viral_bacteria <- codon_usage[codon_usage$Kingdom %in% c("vrl", "bct"),]
                              
subset                            
                              
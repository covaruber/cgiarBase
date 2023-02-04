matToTab <- function(A){
  A[lower.tri(A)] <- NA
  Adf <- as.data.frame(as.table(A)) # converts a matrix in a data frame
  Adf <- Adf[which(!is.na(Adf$Freq)),]
  Adf$Var1n <- as.numeric(as.factor(Adf$Var1))
  Adf$Var2n <- as.numeric(as.factor(Adf$Var2))
  return(Adf)
}

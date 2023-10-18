fixCoords <- function(mydataSub){

  uniqueReps <- unique(mydataSub[,"rep"])
  ideal <- with(mydataSub, table(rowcoord, colcoord, rep))
  nReps <- dim(ideal)[3]
  nCols <- nRows <- numeric()
  orRows <- orCols <- list()
  for(i in 1:nReps){
    nCols[i] <- ncol(ideal[,,i, drop=FALSE])
    nRows[i] <- nrow(ideal[,,i, drop=FALSE])
    orCols[[i]] <- as.numeric(colnames(ideal[,,i, drop=FALSE]))
    orRows[[i]] <- as.numeric(rownames(ideal[,,i, drop=FALSE]))
  }
  # where each trial ends for cols
  end <- numeric()
  for(i in 1:(length(nCols))){end[i]=sum(nCols[1:(i)])+1}
  start <- end - nCols
  end <- start + nCols - 1
  # where each trial ends for rows
  end2 <- numeric()
  for(i in 1:(length(nRows))){end2[i]=sum(nRows[1:(i)])+1}
  start2 <- end2 - nRows
  end2 <- start2 + nRows - 1
  # replace bad values with correct values
  for(i in 1:nReps){

    mydataSub[which(mydataSub[,"rep"] == i),"colcoord"] <- cgiarBase::replaceValues(
      Source=mydataSub[which(mydataSub[,"rep"] == i),"colcoord"],
      Search = orCols[[i]], Replace = (start[i]):(end[i])
    )

    mydataSub[which(mydataSub[,"rep"] == i),"rowcoord"] <- cgiarBase::replaceValues(
      Source=mydataSub[which(mydataSub[,"rep"] == i),"rowcoord"],
      Search = orRows[[i]], Replace = (start2[i]):(end2[i])
    )

  }

  mydataSub$rowcoordF <- as.factor(mydataSub$rowcoord)
  mydataSub$colcoordF <- as.factor(mydataSub$colcoord)
  return(mydataSub)
}

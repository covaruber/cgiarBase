cleanChar <- function(x){

  x <- gsub("base_pipeline_","",x)
  x <- gsub("base_season_","",x)
  x <- gsub("base_location_","",x)
  x <- gsub("base_country_","",x)
  x <- gsub("base_trial_","",x)

  x <- gsub("base_pipeline","",x)
  x <- gsub("base_season","",x)
  x <- gsub("base_location","",x)
  x <- gsub("base_country","",x)
  x <- gsub("base_trial",".",x)

  x <- gsub("[[:punct:]]", "_", x)
  x <- gsub("___","_",x)
  x <- gsub("__","_",x)
  x <- gsub("\xd1","N",x)

  return(x)
}

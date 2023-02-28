cleanChar <- function(x){

  x <- gsub("dummy_pipeline_","",x)
  x <- gsub("dummy_season_","",x)
  x <- gsub("dummy_location_","",x)
  x <- gsub("dummy_country_","",x)
  x <- gsub("dummy_trial_","",x)

  x <- gsub("dummy_pipeline","",x)
  x <- gsub("dummy_season","",x)
  x <- gsub("dummy_location","",x)
  x <- gsub("dummy_country","",x)
  x <- gsub("dummy_trial",".",x)

  x <- gsub("[[:punct:]]", "_", x)
  x <- gsub("___","_",x)
  x <- gsub("__","_",x)
  x <- gsub("\xd1","N",x)

  return(x)
}

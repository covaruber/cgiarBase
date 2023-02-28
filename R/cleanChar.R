cleanChar <- function(x){
  x <- gsub("[[:punct:]]", "", x)
  x <- gsub("\xd1","N",x)

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

  return(x)
}

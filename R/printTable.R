printTable <- function(DT, pageLength = 5, 
                       numericColNames = NULL, numRound = 3, 
                       scrollXOpt = TRUE, ...) {
  
  DT <- data.frame(lapply(X = DT, 
                          FUN = function(x) {
                            if(is.numeric(x)){
                              round(x, numRound)
                            } else {
                              x
                            }
                          }))
  
  table <- DT::datatable(data = DT, 
                         filter = "top", 
                         options = list(autoWidth = TRUE, 
                                        dom = 'l<<t>pB>', 
                                        buttons = c('copy', 'excel'),
                                        pageLength = pageLength,
                                        searchHighlight = TRUE,
                                        lengthMenu = c(5, 10, 15, 20),
                                        scrollX = scrollXOpt),
                         extensions = 'Buttons',
                         rownames = FALSE,
                         ...)
  if (length(numericColNames) > 0){
    table <- table %>% formatRound(columns = numericColNames,
                                   digits = numRound)
  }
  
  table
}
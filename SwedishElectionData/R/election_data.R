#' Connect to web API on Swedish election results 
#'
#' This function allows the user to connect to the web API provided by Valmyndigheten to access the election results from 2014. 
#'
#' @param ... Numeric, complex, or logical vectors.
#' @param na.rm A logical scalar. Should missing values (including NaN)
#'   be removed?
#' @return put what the function returns here 
#' }


election_data <-
function(level, type){
  
  if(!is.character(level)){stop("Error: Level input should be character")}
  if(!is.character(type)){stop("Error: Type input should be character")}
  
  if(level == "riksdag" && type == "kommun"){
    
    myurl <- "https://data.val.se/val/val2014/statistik/2014_riksdagsval_per_kommun.xls"
    
    httr::GET(myurl, httr::write_disk(tf <- tempfile(fileext = ".xls")))
    df <- readxl::read_excel(tf)
    val <- data.frame(df)
    val <- val[-1,]
    return(head(val))
    
  }
  
  if(level == "riksdag" && type == "valdistrikt"){
    
    my_url <- "https://data.val.se/val/val2014/statistik/2014_riksdagsval_per_valdistrikt.xls"
    
    httr::GET(my_url, httr::write_disk(tf1 <- tempfile(fileext = ".xls")))
    df1 <- readxl::read_excel(tf1)
    val1 <- data.frame(df1)
    val1 <- val1[-1,]
    return(head(val1))
    
  }
  
  if(level == "landsting" && type == "kommun"){
    
    my_url2 <- "https://data.val.se/val/val2014/statistik/2014_landstingsval_per_kommun.xls"
    
    httr::GET(my_url2, httr::write_disk(tf2 <- tempfile(fileext = ".xls")))
    df2 <- readxl::read_excel(tf2)
    val2 <- data.frame(df2)
    val2 <- val2[-1,]
    return(head(val2))
    
  }
  if(level == "landsting" && type == "valdistrikt"){
    
    my_url3 <- "https://data.val.se/val/val2014/statistik/2014_landstingsval_per_valdistrikt.xls"
    
    httr::GET(my_url3, httr::write_disk(tf3 <- tempfile(fileext = ".xls")))
    df3 <- readxl::read_excel(tf3)
    val3 <- data.frame(df3)
    val3 <- val3[-1,]
    return(head(val3))
    
  }
  if(level == "kommun" && type == "kommun"){
    
    my_url4 <- "https://data.val.se/val/val2014/statistik/2014_kommunval_per_kommun.xlsx"
    
    httr::GET(my_url4, httr::write_disk(tf4 <- tempfile(fileext = ".xls")))
    df4 <- readxl::read_excel(tf4)
    val4 <- data.frame(df4)
    val4 <- val4[-1,]
    return(head(val4))
  }
  if(level == "kommun" && type == "valdistrikt"){
    
    my_url5 <- "https://data.val.se/val/val2014/statistik/2014_kommunval_per_valdistrikt.xlsx"
    
    httr::GET(my_url5, httr::write_disk(tf5 <- tempfile(fileext = ".xls")))
    df5 <- readxl::read_excel(tf5)
    val5 <- data.frame(df5)
    val5 <- val5[-1,]
    return(head(val5))
  }
  
}

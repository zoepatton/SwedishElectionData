\name{election_data}
\alias{election_data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
election_data(level, type)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{level}{
%%     ~~Describe \code{level} here~~
}
  \item{type}{
%%     ~~Describe \code{type} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (level, type) 
{
    if (!is.character(level)) {
        stop("Error: Level input should be character")
    }
    if (!is.character(type)) {
        stop("Error: Type input should be character")
    }
    if (level == "riksdag" && type == "kommun") {
        myurl <- "https://data.val.se/val/val2014/statistik/2014_riksdagsval_per_kommun.xls"
        httr::GET(myurl, httr::write_disk(tf <- tempfile(fileext = ".xls")))
        df <- readxl::read_excel(tf)
        val <- data.frame(df)
        val <- val[-1, ]
        return(head(val))
    }
    if (level == "riksdag" && type == "valdistrikt") {
        my_url <- "https://data.val.se/val/val2014/statistik/2014_riksdagsval_per_valdistrikt.xls"
        httr::GET(my_url, httr::write_disk(tf1 <- tempfile(fileext = ".xls")))
        df1 <- readxl::read_excel(tf1)
        val1 <- data.frame(df1)
        val1 <- val1[-1, ]
        return(head(val1))
    }
    if (level == "landsting" && type == "kommun") {
        my_url2 <- "https://data.val.se/val/val2014/statistik/2014_landstingsval_per_kommun.xls"
        httr::GET(my_url2, httr::write_disk(tf2 <- tempfile(fileext = ".xls")))
        df2 <- readxl::read_excel(tf2)
        val2 <- data.frame(df2)
        val2 <- val2[-1, ]
        return(head(val2))
    }
    if (level == "landsting" && type == "valdistrikt") {
        my_url3 <- "https://data.val.se/val/val2014/statistik/2014_landstingsval_per_valdistrikt.xls"
        httr::GET(my_url3, httr::write_disk(tf3 <- tempfile(fileext = ".xls")))
        df3 <- readxl::read_excel(tf3)
        val3 <- data.frame(df3)
        val3 <- val3[-1, ]
        return(head(val3))
    }
    if (level == "kommun" && type == "kommun") {
        my_url4 <- "https://data.val.se/val/val2014/statistik/2014_kommunval_per_kommun.xlsx"
        httr::GET(my_url4, httr::write_disk(tf4 <- tempfile(fileext = ".xls")))
        df4 <- readxl::read_excel(tf4)
        val4 <- data.frame(df4)
        val4 <- val4[-1, ]
        return(head(val4))
    }
    if (level == "kommun" && type == "valdistrikt") {
        my_url5 <- "https://data.val.se/val/val2014/statistik/2014_kommunval_per_valdistrikt.xlsx"
        httr::GET(my_url5, httr::write_disk(tf5 <- tempfile(fileext = ".xls")))
        df5 <- readxl::read_excel(tf5)
        val5 <- data.frame(df5)
        val5 <- val5[-1, ]
        return(head(val5))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.

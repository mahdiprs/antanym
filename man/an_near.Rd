% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.R
\name{an_near}
\alias{an_near}
\title{Find placenames near a given location}
\usage{
an_near(gaz, loc, max_distance)
}
\arguments{
\item{gaz}{data.frame or SpatialPointsDataFrame: as returned by \code{\link{an_read}}}

\item{loc}{numeric: target location (numeric longitude and latitude, or SpatialPoints object)}

\item{max_distance}{numeric: maximum search distance in kilometres}
}
\value{
data.frame of results
}
\description{
Find placenames near a given location
}
\examples{
\dontrun{
 g <- an_read(cache_directory="c:/temp/gaz")
 an_near(g,c(110,-66),10)

 ## using dplyr or magrittr
 g \%>\% an_near(c(100,-66),20)

 ## with sp objects
 gsp <- an_read(cache_directory="c:/temp/gaz",sp=TRUE)
 loc <- SpatialPoints(matrix(c(110,-66),nrow=1),
   proj4string=CRS("+proj=longlat +datum=WGS84 +ellps=WGS84"))
 an_near(gsp,loc,10)
}

}
\references{
\url{http://www.scar.org/data-products/cga}
}
\seealso{
\code{\link{an_read}}
}


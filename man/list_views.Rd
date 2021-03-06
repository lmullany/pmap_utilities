% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pmap_db_utilities.R
\name{list_views}
\alias{list_views}
\title{List views in a given schema}
\usage{
list_views(schema = "dbo", engine = default_engine)
}
\arguments{
\item{schema}{a string name of schema to search, default="dbo"}

\item{engine}{a dbConnect connection object; by default will look in namespace for default_engine}
}
\value{
character vector of view names
}
\description{
Function returns a character vector of all view names found in a given schema
}
\examples{
list_views(engine = myconnection)

}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pmap_db_utilities.R
\name{get_table_dim}
\alias{get_table_dim}
\title{Get the dimensions (rows and columns) of a given table in a schema}
\usage{
get_table_dim(table, schema = "dbo", engine = default_engine, exact = FALSE)
}
\arguments{
\item{table}{a string name of table to search}

\item{schema}{a string name of schema to search;default="dbo"}

\item{engine}{a dbConnect connection object; by default will look in namespace for default_engine}

\item{exact}{logical, default = FALSE; set to TRUE to get exact row count}
}
\value{
a vector of rows and cols
}
\description{
Function returns a named vector of rows (number of rows) and cols (number of cols). This query
uses the sys.dm_db_partition_stats table (if permission); in a live database with inserts/deletions, etc this
will not be exact; if an exact count is required, or permission to access sys.dm_db_partition_stats table
is not granted, the \code{exact} parameter can be set to TRUE
}
\examples{
get_table_dim(problemlist',schema="dbo", engine=myconnection)
get_table_dim(problemlist',schema="dbo", engine=myconnection, exact=TRUE)
}

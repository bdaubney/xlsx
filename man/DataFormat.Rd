% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataFormat.R
\name{is.DataFormat}
\alias{is.DataFormat}
\alias{DataFormat}
\title{Create an DataFormat object.}
\usage{
is.DataFormat(df)

DataFormat(x)
}
\arguments{
\item{df}{An DataFormat object, as returned by \code{DataFormat}.}

\item{x}{a character value specifying the data format.}
}
\value{
\code{DataFormat} returns a list one component dataFormat, and a
class attribute "DataFormat".  DataFormat objects are used when constructing
cell styles.

\code{is.DataFormat} returns \code{TRUE} if the argument is of class
"DataFormat" and \code{FALSE} otherwise.
}
\description{
Create an DataFormat object, useful when working with cell styles.
}
\details{
Specifying the \code{dataFormat} argument allows you to format the cell.
For example, "#,##0.00" corresponds to using a comma separator for powers of
1000 with two decimal places, "m/d/yyyy" can be used to format dates and is
the equivalent of 's MM/DD/YYYY format.  To format datetimes use "m/d/yyyy
h:mm:ss;@".  To show negative values in red within parantheses with two
decimals and commas after power of 1000 use "#,##0.00_);[Red](#,##0.00)".  I
am not aware of an official way to discover these strings.  I find them out
by recording a macro that formats a specific cell and then checking out the
resulting VBA code.  From there you can read the \code{dataFormat} code.
}
\examples{

  df <-  DataFormat("#,##0.00")

}
\seealso{
\code{\link{CellStyle}} for using the a \code{DataFormat} object.
}
\author{
Adrian Dragulescu
}

\name{bearings}
\alias{bearings}
\docType{data}

\title{bearings}

\description{
Several data sets related to life test are available in the reliaR package, which have been taken from the literature.
}

\usage{data(bearings)}

\format{
A vector containing 23 observations.
}

\details{
The data given here arose in tests on endurance of deep groove ball bearings. The data are the number
of million revolutions before failure for each of the 23 ball bearings in the life test.
}

\references{
Lawless, J. F. (2003).
\emph{Statistical Models and Methods for Lifetime Data}, 2nd ed., John Wiley and Sons, New York.
}

\examples{
## Load data sets
data(bearings)
## Histogram for bearings
hist(bearings)
}

\keyword{datasets}

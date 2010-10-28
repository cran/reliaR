\name{conductors}
\alias{conductors}
\docType{data}

\title{Accelerated life test data}

\description{
Several data sets related to life test are available in the reliaR package, which have been taken from the literature.
}

\usage{data(conductors)}

\format{
A vector containing 59 observations.
}

\details{
The data is obtained from Lawless(2003, pp. 267) and it represents the faiure times of 59 conductors from an accelerated life test.
Failure times are in hours, and there are no censored observations.
}

\references{
Lawless, J. F. (2003).
\emph{Statistical Models and Methods for Lifetime Data},2nd ed., John Wiley and Sons, New York.
}

\examples{
## Load data sets
data(conductors)
## Histogram for conductors
hist(conductors)
}

\keyword{datasets}

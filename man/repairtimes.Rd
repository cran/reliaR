\name{repairtimes}
\alias{repairtimes}
\docType{data}

\title{Maintenance Data}

\description{
Several data sets related to life test are available in the reliaR package, which have been taken from the literature.
}

\usage{data(repairtimes)}

\format{
A vector containing 46 observations.
}

\details{
\code{repairtimes} correspond to maintenance data on active repair times (in hours) for an airborne communications transceiver.
}

\references{
Chhikara, R. S. and Folks, J. L. (1989).
\emph{The Inverse Gaussian Distribution}. Marcel Dekker, New York.
}

\examples{
## Load data sets
data(repairtimes)
## Histogram for repairtimes
hist(repairtimes)
}

\keyword{datasets}

\name{reactorpump}
\alias{reactorpump}
\docType{data}

\title{Reactor pump}

\description{
Several data sets related to life test are available in the reliaR package, which have been taken from the literature.
}

\usage{data(reactorpump)}

\format{
A vector containing 23 observations.
}

\details{
The data is based on total time on test plot analysis for mechanical components of the RSG-GAS reactor. The data are the
time between failures of secondary reactor pumps.
}

\references{
Bebbington,M., Lai, C.D. and Zitikis, R.(2007).
\emph{A flexible Weibull extension}. Reliability Engineering and System Safety, 92, 719-726.

Salman Suprawhardana M, Prayoto, Sangadji.
\emph{Total time on test plot analysis for mechanical components of the RSG-GAS reactor}.
Atom Indones (1999), 25(2).
}

\examples{
## Load data sets
data(reactorpump)
## Histogram for reactorpump
hist(reactorpump)
}

\keyword{datasets}

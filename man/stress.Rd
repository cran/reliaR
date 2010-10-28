\name{stress}
\alias{stress}
\docType{data}

\title{Breaking stress}

\description{
Several data sets related to life test are available in the reliaR package, which have been taken from the literature.
}

\usage{data(stress)}

\format{
A vector containing 100 observations.
}

\details{
The data is obtained from Nichols and Padgett (2006) and it represents the breaking stress of carbon fibres (in Gba).

}

\references{
Nichols, M.D. and Padgett, W.J. (2006).
\emph{A bootstrap control chart for Weibull percentiles}.
Quality and Reliability Engineering International, 22, 141-151.
}

\examples{
## Load data sets
data(stress)
## Histogram for stress
hist(stress)
}

\keyword{datasets}

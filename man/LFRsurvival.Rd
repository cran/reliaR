\name{LFRsurvival}

\alias{LFRsurvival}
\alias{crf.lfr}
\alias{hlfr}
\alias{hra.lfr}
\alias{slfr}

\title{Survival related functions for the linear failure rate(LFR) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the linear failure rate(LFR)
  distribution with parameters \code{alpha} and \code{beta}.}

\usage{
crf.lfr(x, t = 0, alpha, beta)
hlfr(x, alpha, beta)
hra.lfr(x, alpha, beta)
slfr(x, alpha, beta)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{parameter.}
    \item{beta}{parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.lfr} gives the conditional reliability function (crf),
    \code{hlfr} gives the hazard function,
    \code{hra.lfr} gives the hazard rate average (HRA) function, and
    \code{slfr} gives the survival function for the linear failure rate(LFR) distribution.
}

\seealso{\code{\link{dlfr}} for other linear failure rate(LFR) distribution related functions;
}

\references{
Bain, L.J. (1974).
\emph{Analysis for the Linear Failure-Rate Life-Testing Distribution},
Technometrics, 16(4), 551 - 559.

Lawless, J.F.(2003).
\emph{Statistical Models and Methods for Lifetime Data},
John Wiley and Sons, New York.

Sen, A. and Bhattacharya, G.K.(1995).
\emph{Inference procedure for the linear failure rate mode},
Journal of Statistical Planning and Inference, 46, 59-76.
}

\examples{
## load data set
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 1.77773e-03,  beta.est = 2.77764e-06

## Reliability indicators for data(sys2):

## Reliability function
slfr(sys2, 1.777673e-03, 2.777640e-06)

## Hazard function
hlfr(sys2, 1.777673e-03, 2.777640e-06)

## hazard rate average(hra)
hra.lfr(sys2, 1.777673e-03, 2.777640e-06)

## Conditional reliability function (age component=0)
crf.lfr(sys2, 0.00, 1.777673e-03, 2.777640e-06)

## Conditional reliability function (age component=3.0)
crf.lfr(sys2, 3.0, 1.777673e-03, 2.777640e-06)
}

\keyword{survival}
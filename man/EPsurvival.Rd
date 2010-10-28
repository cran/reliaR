\name{EPsurvival}

\alias{EPsurvival}
\alias{crf.exp.power}
\alias{hexp.power}
\alias{hra.exp.power}
\alias{sexp.power}

\title{Survival related functions for the Exponential Power(EP) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Exponential Power 
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}
  
\usage{
crf.exp.power(x, t = 0, alpha, lambda)
hexp.power(x, alpha, lambda)
hra.exp.power(x, alpha, lambda)
sexp.power(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{tilt  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.exp.power} gives the conditional reliability function (crf),
    \code{hexp.power} gives the hazard function,
    \code{hra.exp.power} gives the hazard rate average (HRA) function, and
    \code{sexp.power} gives the survival function for the Exponential Power distribution.
}

\seealso{\code{\link{dexp.power}} for other Exponential Power distribution related functions}

\references{
Chen, Z.(1999).
\emph{Statistical inference about the shape parameter of the exponential power distribution},  Journal :Statistical Papers,  Vol. 40(4),
459-468.

Pham, H. and Lai, C.D.(2007).
\emph{On recent generalizations of the Weibull distribution}, IEEE Trans. on Reliability, Vol. 56(3), 454-458.

Smith, R.M. and  Bain, L.J.(1975).
\emph{An exponential power life-test distribution}, Communications in Statistics - Simulation and Computation,
Vol.4(5), 469 - 481
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.905868898, lambda.est =  0.001531423

## Reliability indicators:

## Reliability function
sexp.power(sys2, 0.905868898, 0.001531423)

## Hazard function 
hexp.power(sys2, 0.905868898, 0.001531423)

## hazard rate average(hra)
hra.exp.power(sys2, 0.905868898, 0.001531423)

## Conditional reliability function (age component=0)
crf.exp.power(sys2, 0.00, 0.905868898, 0.001531423)

## Conditional reliability function (age component=3.0)
crf.exp.power(sys2, 3.0, 0.905868898, 0.001531423)
}

\keyword{survival}


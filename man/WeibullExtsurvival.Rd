\name{WeibullExtsurvival}

\alias{WeibullExtsurvival}
\alias{crf.weibull.ext}
\alias{hweibull.ext}
\alias{hra.weibull.ext}
\alias{sweibull.ext}

\title{Survival related functions for the Weibull Extension(WE) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Weibull Extension(WE)
  distribution with shape parameter \code{alpha} and scale parameter \code{beta}.}

\usage{
crf.weibull.ext(x, t = 0, alpha, beta)
hweibull.ext(x, alpha, beta)
hra.weibull.ext(x, alpha, beta)
sweibull.ext(x, alpha, beta)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{beta}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.weibull.ext} gives the conditional reliability function (crf),
    \code{hweibull.ext} gives the hazard function,
    \code{hra.weibull.ext} gives the hazard rate average (HRA) function, and
    \code{sweibull.ext} gives the survival function for the Weibull Extension(WE) distribution.
}

\seealso{\code{\link{dweibull.ext}} for other c distribution related functions;
}

\references{
Tang, Y., Xie, M. and Goh, T.N., (2003).
\emph{Statistical analysis of a Weibull extension model},
Communications in Statistics: Theory & Methods 32(5):913-928.

Zhang, T., and Xie, M.(2007).
\emph{Failure Data Analysis with Extended Weibull Distribution},
Communications in Statistics-Simulation and Computation, 36(3), 579-592.
}

\examples{
## load data set
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.00019114, beta.est = 0.14696242

## Reliability indicators for data(sys2):

## Reliability function
sweibull.ext(sys2, 0.00019114, 0.14696242)

## Hazard function
hweibull.ext(sys2, 0.00019114, 0.14696242)

## hazard rate average(hra)
hra.weibull.ext(sys2, 0.00019114, 0.14696242)

## Conditional reliability function (age component=0)
crf.weibull.ext(sys2, 0.00, 0.00019114, 0.14696242)

## Conditional reliability function (age component=3.0)
crf.weibull.ext(sys2, 3.0, 0.00019114, 0.14696242)
}

\keyword{survival}
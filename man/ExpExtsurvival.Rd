\name{ExpExtsurvival}

\alias{ExpExtsurvival}
\alias{crf.exp.ext}
\alias{hexp.ext}
\alias{hra.exp.ext}
\alias{sexp.ext}

\title{Survival related functions for the Exponential Extension(EE) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Exponential Extension(EE)
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
crf.exp.ext(x, t = 0, alpha, lambda)
hexp.ext(x, alpha, lambda)
hra.exp.ext(x, alpha, lambda)
sexp.ext(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.exp.ext} gives the conditional reliability function (crf),
    \code{hexp.ext} gives the hazard function,
    \code{hra.exp.ext} gives the hazard rate average (HRA) function, and
    \code{sexp.ext} gives the survival function for the Exponential Extension(EE) distribution.
}

\seealso{\code{\link{dexp.ext}} for other Exponential Extension(EE) distribution related functions;
}

\references{
Nikulin, M. and Haghighi, F.(2006).
\emph{A Chi-squared test for the generalized power Weibull family for the head-and-neck cancer censored data},
Journal of Mathematical Sciences, Vol. 133(3),  1333-1341.
}

\examples{
## load data set
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.0126e+01, lambda.est = 1.5848e-04

## Reliability indicators for data(sys2):

## Reliability function
sexp.ext(sys2, 1.0126e+01, 1.5848e-04)

## Hazard function
hexp.ext(sys2, 1.0126e+01, 1.5848e-04)

## hazard rate average(hra)
hra.exp.ext(sys2, 1.0126e+01, 1.5848e-04)

## Conditional reliability function (age component=0)
crf.exp.ext(sys2, 0.00, 1.0126e+01, 1.5848e-04)

## Conditional reliability function (age component=3.0)
crf.exp.ext(sys2, 3.0, 1.0126e+01, 1.5848e-04)

}

\keyword{survival}
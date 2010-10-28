\name{MOEWsurvival}

\alias{MOEWsurvival}
\alias{crf.moew}
\alias{hmoew}
\alias{hra.moew}
\alias{smoew}

\title{Survival related functions for the Marshall-Olkin Extended Weibull (MOEW) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Marshall-Olkin Extended Weibull (MOEW) 
  distribution with tilt parameter \code{alpha} and scale parameter \code{lambda}.}
  
\usage{
crf.moew(x, t = 0, alpha, lambda)
hmoew(x, alpha, lambda)
hra.moew(x, alpha, lambda)
smoew(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{tilt  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.moew} gives the conditional reliability function (crf),
    \code{hmoew} gives the hazard function,
    \code{hra.moew} gives the hazard rate average (HRA) function, and
    \code{smoew} gives the survival function for the MOEW distribution.
}

\seealso{\code{\link{dmoew}} for other MOEW distribution related functions;
}

\references{
  Marshall, A. W., Olkin, I. (1997).
  \emph{A new method for adding a parameter to a family
of distributions with application to the exponential and Weibull families.}
  Biometrika,84(3):641-652.

  Marshall, A. W., Olkin, I.(2007).
  \emph{Life Distributions: Structure of Nonparametric,
Semiparametric, and Parametric Families.}
  Springer, New York.
}

\examples{
## load data set 
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.3035937,  lambda.est = 279.2177754
## Reliability indicators for data(sys2):

## Reliability function
smoew(sys2, 0.3035937, 279.2177754)

## Hazard function 
hmoew(sys2, 0.3035937, 279.2177754)

## hazard rate average(hra)
hra.moew(sys2, 0.3035937, 279.2177754)

## Conditional reliability function (age component=0)
crf.moew(sys2, 0.00, 0.3035937, 279.2177754)

## Conditional reliability function (age component=3.0)
crf.moew(sys2, 3.0, 0.3035937, 279.2177754)
}

\keyword{survival}





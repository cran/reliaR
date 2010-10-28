\name{LogisRayleighsurvival}

\alias{LogisRayleighsurvival}
\alias{crf.logis.rayleigh}
\alias{hlogis.rayleigh}
\alias{hra.logis.rayleigh}
\alias{slogis.rayleigh}

\title{Survival related functions for the Logistic-Rayleigh(LR) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Logistic-Rayleigh(LR)
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
crf.logis.rayleigh(x, t = 0, alpha, lambda)
hlogis.rayleigh(x, alpha, lambda)
hra.logis.rayleigh(x, alpha, lambda)
slogis.rayleigh(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.logis.rayleigh} gives the conditional reliability function (crf),
    \code{hlogis.rayleigh} gives the hazard function,
    \code{hra.logis.rayleigh} gives the hazard rate average (HRA) function, and
    \code{slogis.rayleigh} gives the survival function for the Logistic-Rayleigh(LR) distribution.
}

\seealso{\code{\link{dlogis.rayleigh}} for other Logistic-Rayleigh(LR) distribution related functions;
}

\references{
Lan, Y. and Leemis, L. M. (2008).
\emph{The Logistic-Exponential Survival Distribution},
Naval Research Logistics, 55, 252-264.
}

\examples{
## load data set
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.4779388, lambda.est = 0.2141343

## Reliability indicators for data(stress):

## Reliability function
slogis.rayleigh(stress, 1.4779388, 0.2141343)

## Hazard function
hlogis.rayleigh(stress, 1.4779388, 0.2141343)

## hazard rate average(hra)
hra.logis.rayleigh(stress, 1.4779388, 0.2141343)

## Conditional reliability function (age component=0)
crf.logis.rayleigh(stress, 0.00, 1.4779388, 0.2141343)

## Conditional reliability function (age component=3.0)
crf.logis.rayleigh(stress, 3.0, 1.4779388, 0.2141343)
}

\keyword{survival}
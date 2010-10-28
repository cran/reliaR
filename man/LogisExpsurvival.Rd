\name{LogisExpsurvival}

\alias{LogisExpsurvival}
\alias{crf.logis.exp}
\alias{hlogis.exp}
\alias{hra.logis.exp}
\alias{slogis.exp}

\title{Survival related functions for the Logistic-Exponential(LE) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Logistic-Exponential(LE)
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
crf.logis.exp(x, t = 0, alpha, lambda)
hlogis.exp(x, alpha, lambda)
hra.logis.exp(x, alpha, lambda)
slogis.exp(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.logis.exp} gives the conditional reliability function (crf),
    \code{hlogis.exp} gives the hazard function,
    \code{hra.logis.exp} gives the hazard rate average (HRA) function, and
    \code{slogis.exp} gives the survival function for the Logistic-Exponential(LE) distribution.
}

\seealso{\code{\link{dlogis.exp}} for other Logistic-Exponential(LE) distribution related functions;
}

\references{
Lan, Y. and Leemis, L. M. (2008).
\emph{The Logistic-Exponential Survival Distribution},
Naval Research Logistics, 55, 252-264.
}

\examples{
## load data set
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 2.36754, lambda.est = 0.01059

## Reliability indicators for data(bearings):

## Reliability function
slogis.exp(bearings, 2.36754, 0.01059)

## Hazard function
hlogis.exp(bearings, 2.36754, 0.01059)

## hazard rate average(hra)
hra.logis.exp(bearings, 2.36754, 0.01059)

## Conditional reliability function (age component=0)
crf.logis.exp(bearings, 0.00, 2.36754, 0.01059)

## Conditional reliability function (age component=3.0)
crf.logis.exp(bearings, 3.0, 2.36754, 0.01059)
}

\keyword{survival}
\name{ExpoLogisticsurvival}

\alias{ExpoLogisticsurvival}
\alias{crf.expo.logistic}
\alias{hexpo.logistic}
\alias{hra.expo.logistic}
\alias{sexpo.logistic}

\title{Survival related functions for the Exponentiated Logistic(EL) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Exponentiated Logistic(EL)
  distribution with shape parameter \code{alpha} and scale parameter \code{beta}.}

\usage{
crf.expo.logistic(x, t = 0, alpha, beta)
hexpo.logistic(x, alpha, beta)
hra.expo.logistic(x, alpha, beta)
sexpo.logistic(x, alpha, beta)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{beta}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.expo.logistic} gives the conditional reliability function (crf),
    \code{hexpo.logistic} gives the hazard function,
    \code{hra.expo.logistic} gives the hazard rate average (HRA) function, and
    \code{sexpo.logistic} gives the survival function for the Exponentiated Logistic(EL) distribution.
}

\seealso{\code{\link{dexpo.logistic}} for other Exponentiated Logistic(EL) distribution related functions;
}

\references{
Ali, M.M., Pal, M. and Woo, J. (2007).
\emph{Some Exponentiated Distributions},
The Korean Communications in Statistics, 14(1), 93-109.

Shirke, D.T., Kumbhar, R.R. and Kundu, D.(2005).
\emph{Tolerance intervals for exponentiated scale family of distributions},
Journal of Applied Statistics, 32, 1067-1074
}

\examples{
## load data set
data(dataset2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(dataset2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 5.31302, beta.est = 139.04515

## Reliability indicators for data(dataset2):

## Reliability function
sexpo.logistic(dataset2, 5.31302, 139.04515)

## Hazard function
hexpo.logistic(dataset2, 5.31302, 139.04515)

## hazard rate average(hra)
hra.expo.logistic(dataset2, 5.31302, 139.04515)

## Conditional reliability function (age component=0)
crf.expo.logistic(dataset2, 0.00, 5.31302, 139.04515)

## Conditional reliability function (age component=3.0)
crf.expo.logistic(dataset2, 3.0, 5.31302, 139.04515)
}

\keyword{survival}
\name{ExpoWeibullsurvival}

\alias{ExpoWeibullsurvival}
\alias{crf.expo.weibull}
\alias{hexpo.weibull}
\alias{hra.expo.weibull}
\alias{sexpo.weibull}

\title{Survival related functions for the Exponentiated Weibull(EW) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Exponentiated Weibull(EW)
  distribution with shape parameters \code{alpha} and \code{theta}.}

\usage{
crf.expo.weibull(x, t = 0, alpha, theta)
hexpo.weibull(x, alpha, theta)
hra.expo.weibull(x, alpha, theta)
sexpo.weibull(x, alpha, theta)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{theta}{shape parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.expo.weibull} gives the conditional reliability function (crf),
    \code{hexpo.weibull} gives the hazard function,
    \code{hra.expo.weibull} gives the hazard rate average (HRA) function, and
    \code{sexpo.weibull} gives the survival function for the Exponentiated Weibull(EW) distribution.
}

\seealso{\code{\link{dexpo.weibull}} for other Exponentiated Weibull(EW) distribution related functions;
}

\references{
Mudholkar, G.S. and Srivastava, D.K. (1993).
\emph{Exponentiated Weibull family for analyzing bathtub failure-rate data},
IEEE Transactions on Reliability, 42(2), 299-302.

Murthy, D.N.P., Xie, M. and Jiang, R. (2003).
\emph{Weibull Models}, Wiley, New York.

Nassar, M.M., and Eissa, F. H. (2003).
\emph{On the Exponentiated Weibull Distribution},
Communications in Statistics - Theory and Methods, 32(7), 1317-1336.
}

\examples{
## load data set
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(stress)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est =1.026465, theta.est = 7.824943

## Reliability indicators for data(stress):

## Reliability function
sexpo.weibull(stress, 1.026465, 7.824943)

## Hazard function
hexpo.weibull(stress, 1.026465, 7.824943)

## hazard rate average(hra)
hra.expo.weibull(stress, 1.026465, 7.824943)

## Conditional reliability function (age component=0)
crf.expo.weibull(stress, 0.00, 1.026465, 7.824943)

## Conditional reliability function (age component=3.0)
crf.expo.weibull(stress, 3.0, 1.026465, 7.824943)
}

\keyword{survival}
\name{GPWeibullsurvival}

\alias{GPWeibullsurvival}
\alias{crf.gp.weibull}
\alias{hgp.weibull}
\alias{hra.gp.weibull}
\alias{sgp.weibull}

\title{Survival related functions for the generalized power Weibull(GPW) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the generalized power Weibull(GPW)
  distribution with shape parameters \code{alpha} and \code{theta}.}

\usage{
crf.gp.weibull(x, t = 0, alpha, theta)
hgp.weibull(x, alpha, theta)
hra.gp.weibull(x, alpha, theta)
sgp.weibull(x, alpha, theta)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{theta}{shape parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.gp.weibull} gives the conditional reliability function (crf),
    \code{hgp.weibull} gives the hazard function,
    \code{hra.gp.weibull} gives the hazard rate average (HRA) function, and
    \code{sgp.weibull} gives the survival function for the generalized power Weibull(GPW) distribution.
}

\seealso{\code{\link{dgp.weibull}} for other generalized power Weibull(GPW) distribution related functions;
}

\references{
Nikulin, M. and Haghighi, F.(2006).
\emph{A Chi-squared test for the generalized power Weibull family for the head-and-neck cancer censored data},
Journal of Mathematical Sciences, Vol. 133(3), 1333-1341.

Pham, H. and Lai, C.D.(2007).
\emph{On recent generalizations of the Weibull distribution},
 IEEE Trans. on Reliability, Vol. 56(3), 454-458.
}

\examples{
## load data set
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(repairtimes)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 1.566093, theta.est = 0.355321

## Reliability indicators for data(repairtimes):

## Reliability function
sgp.weibull(repairtimes, 1.566093, 0.355321)

## Hazard function
hgp.weibull(repairtimes, 1.566093, 0.355321)

## hazard rate average(hra)
hra.gp.weibull(repairtimes, 1.566093, 0.355321)

## Conditional reliability function (age component=0)
crf.gp.weibull(repairtimes, 0.00, 1.566093, 0.355321)

## Conditional reliability function (age component=3.0)
crf.gp.weibull(repairtimes, 3.0, 1.566093, 0.355321)
}

\keyword{survival}
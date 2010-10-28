\name{FlexWeibullsurvival}

\alias{FlexWeibullsurvival}
\alias{crf.flex.weibull}
\alias{hflex.weibull}
\alias{hra.flex.weibull}
\alias{sflex.weibull}

\title{Survival related functions for the flexible Weibull(FW) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the flexible Weibull(FW)
  distribution with parameters \code{alpha} and  \code{beta}.}

\usage{
crf.flex.weibull(x, t = 0, alpha, beta)
hflex.weibull(x, alpha, beta)
hra.flex.weibull(x, alpha, beta)
sflex.weibull(x, alpha, beta)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{parameter.}
    \item{beta}{parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.flex.weibull} gives the conditional reliability function (crf),
    \code{hflex.weibull} gives the hazard function,
    \code{hra.flex.weibull} gives the hazard rate average (HRA) function, and
    \code{sflex.weibull} gives the survival function for the flexible Weibull(FW) distribution.
}

\seealso{\code{\link{dflex.weibull}} for other flexible Weibull(FW) distribution related functions;
}

\references{
Bebbington, M., Lai, C.D. and Zitikis, R. (2007).
\emph{A flexible Weibull extension},
Reliability Engineering and System Safety, 92, 719-726.
}

\examples{
## load data set
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(repairtimes)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.07077507, beta.est = 1.13181535

## Reliability indicators for data(repairtimes):

## Reliability function
sflex.weibull(repairtimes, 0.07077507, 1.13181535)

## Hazard function
hflex.weibull(repairtimes, 0.07077507, 1.13181535)

## hazard rate average(hra)
hra.flex.weibull(repairtimes, 0.07077507, 1.13181535)

## Conditional reliability function (age component=0)
crf.flex.weibull(repairtimes, 0.00, 0.07077507, 1.13181535)

## Conditional reliability function (age component=3.0)
crf.flex.weibull(repairtimes, 3.0, 0.07077507, 1.13181535)
}

\keyword{survival}
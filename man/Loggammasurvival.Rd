\name{Loggammasurvival}

\alias{Loggammasurvival}
\alias{crf.log.gamma}
\alias{hlog.gamma}
\alias{hra.log.gamma}
\alias{slog.gamma}

\title{Survival related functions for the log-gamma(LG) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the log-gamma(LG)
  distribution with shape parameters \code{alpha} and  \code{lambda}.}

\usage{
crf.log.gamma(x, t = 0, alpha, lambda)
hlog.gamma(x, alpha, lambda)
hra.log.gamma(x, alpha, lambda)
slog.gamma(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{parameter.}
    \item{lambda}{parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.log.gamma} gives the conditional reliability function (crf),
    \code{hlog.gamma} gives the hazard function,
    \code{hra.log.gamma} gives the hazard rate average (HRA) function, and
    \code{slog.gamma} gives the survival function for the log-gamma(LG) distribution.
}

\seealso{\code{\link{dlog.gamma}} for other log-gamma(LG) distribution related functions;
}

\references{
Klugman, S., Panjer, H. and Willmot, G. (2004).
\emph{Loss Models: From Data to Decisions}, 2nd ed., New York, Wiley.

Lawless, J. F., (2003).
\emph{Statistical Models and Methods for Lifetime Data},
2nd ed., John Wiley and Sons, New York.
}

\examples{
## load data set
data(conductors)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(conductors)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 0.0088741, lambda.est = 0.6059935

## Reliability indicators for data(conductors):

## Reliability function
slog.gamma(conductors, 0.0088741, 0.6059935)

## Hazard function
hlog.gamma(conductors, 0.0088741, 0.6059935)

## hazard rate average(hra)
hra.log.gamma(conductors, 0.0088741, 0.6059935)

## Conditional reliability function (age component=0)
crf.log.gamma(conductors, 0.00, 0.0088741, 0.6059935)

## Conditional reliability function (age component=3.0)
crf.log.gamma(conductors, 3.0, 0.0088741, 0.6059935)
}

\keyword{survival}
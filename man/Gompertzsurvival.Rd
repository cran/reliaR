\name{Gompertzsurvival}

\alias{Gompertzsurvival}
\alias{crf.gompertz}
\alias{hgompertz}
\alias{hra.gompertz}
\alias{sgompertz}

\title{Survival related functions for the Gompertz distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Gompertz
  distribution with shape parameter \code{alpha} and scale parameter \code{theta}.}

\usage{
crf.gompertz(x, t = 0, alpha, theta)
hgompertz(x, alpha, theta)
hra.gompertz(x, alpha, theta)
sgompertz(x, alpha, theta)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{theta}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.gompertz} gives the conditional reliability function (crf),
    \code{hgompertz} gives the hazard function,
    \code{hra.gompertz} gives the hazard rate average (HRA) function, and
    \code{sgompertz} gives the survival function for the Gompertz distribution.
}

\seealso{\code{\link{dgompertz}} for other Gompertz distribution related functions;
}

\references{
Marshall, A. W., Olkin, I.(2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}

\examples{
## load data set
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(sys2)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 0.00121307, theta.est = 0.00173329

## Reliability indicators for data(sys2):

## Reliability function
sgompertz(sys2, 0.00121307, 0.00173329)

## Hazard function
hgompertz(sys2, 0.00121307, 0.00173329)

## hazard rate average(hra)
hra.gompertz(sys2, 0.00121307, 0.00173329)

## Conditional reliability function (age component=0)
crf.gompertz(sys2, 0.00, 0.00121307, 0.00173329)

## Conditional reliability function (age component=3.0)
crf.gompertz(sys2, 3.0, 0.00121307, 0.00173329)
}

\keyword{survival}
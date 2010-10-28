\name{Gumbelsurvival}

\alias{Gumbelsurvival}
\alias{crf.gumbel}
\alias{hgumbel}
\alias{hra.gumbel}
\alias{sgumbel}

\title{Survival related functions for the Gumbel distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Gumbel
  distribution with location parameter \code{mu} and scale parameter \code{sigma}.}

\usage{
crf.gumbel(x, t = 0, mu, sigma)
hgumbel(x, mu, sigma)
hra.gumbel(x, mu, sigma)
sgumbel(x, mu, sigma)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{mu}{location  parameter.}
    \item{sigma}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.gumbel} gives the conditional reliability function (crf),
    \code{hgumbel} gives the hazard function,
    \code{hra.gumbel} gives the hazard rate average (HRA) function, and
    \code{sgumbel} gives the survival function for the Gumbel distribution.
}

\seealso{\code{\link{dgumbel}} for other Gumbel distribution related functions;
}

\references{
Marshall, A. W., Olkin, I.(2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}

\examples{
## load data set
data(dataset2)
## Maximum Likelihood(ML) Estimates of mu & sigma for the data(dataset2)
## Estimates of mu & sigma using 'maxLik' package
## mu.est = 212.157, sigma.est = 151.768

## Reliability indicators for data(dataset2):

## Reliability function
sgumbel(dataset2, 212.157, 151.768)

## Hazard function
hgumbel(dataset2, 212.157, 151.768)

## hazard rate average(hra)
hra.gumbel(dataset2, 212.157, 151.768)

## Conditional reliability function (age component=0)
crf.gumbel(dataset2, 0.00, 212.157, 151.768)

## Conditional reliability function (age component=3.0)
crf.gumbel(dataset2, 3.0, 212.157, 151.768)
}

\keyword{survival}
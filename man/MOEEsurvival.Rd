\name{MOEEsurvival}

\alias{MOEEsurvival}
\alias{crf.moee}
\alias{hmoee}
\alias{hra.moee}
\alias{smoee}

\title{Survival related functions for the Marshall-Olkin Extended Exponential (MOEE) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Marshall-Olkin Extended Exponential (MOEE) 
  distribution with tilt parameter \code{alpha} and scale parameter \code{lambda}.}
  
\usage{
crf.moee(x, t = 0, alpha, lambda)
hmoee(x, alpha, lambda)
hra.moee(x, alpha, lambda)
smoee(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{tilt  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.moee} gives the conditional reliability function (crf),
    \code{hmoee} gives the hazard function,
    \code{hra.moee} gives the hazard rate average (HRA) function, and
    \code{smoee} gives the survival function for the MOEE distribution.
}

\seealso{\code{\link{dmoee}} for other MOEE distribution related functions;
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
## Load data sets
data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 75.67982, lambda.est = 1.67576
smoee(stress, 75.67982, 1.67576)
hmoee(stress, 75.67982, 1.67576)
hra.moee(stress, 75.67982, 1.67576)
crf.moee(stress, 3.00, 75.67982, 1.67576)
}

\keyword{survival}

\name{InvGenExpEsurvival}

\alias{InvGenExpsurvival}
\alias{crf.inv.genexp}
\alias{hinv.genexp}
\alias{hra.inv.genexp}
\alias{sinv.genexp}

\title{Survival related functions for the Inverse Generalized Exponential(IGE) distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Inverse Generalized Exponential(IGE)
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
crf.inv.genexp(x, t = 0, alpha, lambda)
hinv.genexp(x, alpha, lambda)
hra.inv.genexp(x, alpha, lambda)
sinv.genexp(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.inv.genexp} gives the conditional reliability function (crf),
    \code{hinv.genexp} gives the hazard function,
    \code{hra.inv.genexp} gives the hazard rate average (HRA) function, and
    \code{sinv.genexp} gives the survival function for the Inverse Generalized Exponential(IGE) distribution.
}

\seealso{\code{\link{dinv.genexp}} for other Inverse Generalized Exponential(IGE) distribution related functions;
}

\references{
Gupta, R. D. and Kundu, D. (2001).
\emph{Exponentiated exponential family; an alternative to gamma and Weibull distributions},
 Biometrical Journal, 43(1), 117-130.

Gupta, R.D. and Kundu, D., (2007).
\emph{Generalized exponential distribution: Existing results and some recent development},
 Journal of Statistical Planning and Inference. 137, 3537-3547.
}

\examples{
## load data set
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(repairtimes)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.097807, lambda.est = 1.206889

## Reliability indicators for data(repairtimes):

## Reliability function
sinv.genexp(repairtimes, 1.097807, 1.206889)

## Hazard function
hinv.genexp(repairtimes, 1.097807, 1.206889)

## hazard rate average(hra)
hra.inv.genexp(repairtimes, 1.097807, 1.206889)

## Conditional reliability function (age component=0)
crf.inv.genexp(repairtimes, 0.00, 1.097807, 1.206889)

## Conditional reliability function (age component=3.0)
crf.inv.genexp(repairtimes, 3.0, 1.097807, 1.206889)
}

\keyword{survival}
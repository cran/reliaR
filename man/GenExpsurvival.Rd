\name{GenExpsurvival}

\alias{GenExpsurvival}
\alias{crf.gen.exp}
\alias{hgen.exp}
\alias{hra.gen.exp}
\alias{sgen.exp}

\title{Survival related functions for the Generalized Exponential (GE) 
distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Generalized Exponential (GE) 
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}
  
\usage{
crf.gen.exp(x, t = 0, alpha, lambda)
hgen.exp(x, alpha, lambda)
hra.gen.exp(x, alpha, lambda)
sgen.exp(x, alpha, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{alpha}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.gen.exp} gives the conditional reliability function (crf),
    \code{hgen.exp} gives the hazard function,
    \code{hra.gen.exp} gives the hazard rate average (HRA) function, and
    \code{sgen.exp} gives the survival function for the GE distribution.
}

\seealso{\code{\link{dgen.exp}} for other GE distribution related functions;
}

\references{
  Gupta, R. D. and Kundu, D. (2001).
  \emph{Exponentiated exponential family; an
alternative to gamma and Weibull distributions.}
  Biometrical Journal, 43(1), 117 - 130.

  Gupta, R. D. and Kundu, D. (1999).
  \emph{Generalized exponential distributions.}
  Australian and New Zealand Journal of Statistics, 41(2), 173 - 188.
}

\examples{
## load data set
data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 5.28321139, lambda.est = 0.03229609
sgen.exp(bearings, 5.28321139, 0.03229609)
hgen.exp(bearings, 5.28321139, 0.03229609)
hra.gen.exp(bearings, 5.28321139, 0.03229609)
crf.gen.exp(bearings, 20.0, 5.28321139, 0.03229609)
}

\keyword{survival}

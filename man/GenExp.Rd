\name{GenExp}

\alias{GenExp}
\alias{dgen.exp}
\alias{pgen.exp}
\alias{qgen.exp}
\alias{rgen.exp}

\title{The Generalized Exponential (GE) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Generalized Exponential (GE) 
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dgen.exp(x, alpha, lambda, log = FALSE)
pgen.exp(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qgen.exp(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rgen.exp(n, alpha, lambda)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{alpha}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\value{
  \code{dgen.exp} gives the density,
  \code{pgen.exp} gives the distribution function,
  \code{qgen.exp} gives the quantile function, and
  \code{rgen.exp} generates random deviates.
}

\details{
  The generalized exponential distribution has density
  \deqn{f(x; \alpha, \lambda) = \alpha \lambda x\; e^{-\lambda x} \; \left\{1-e^{-\lambda x} \right\}^{\alpha -1};\; (\alpha, \lambda) > 0, x > 0.}{
  f(x; \alpha, \lambda) = \alpha \lambda x exp(-\lambda x){1 - exp(-\lambda x)}^(\alpha - 1);  (\alpha, \lambda) > 0, x > 0.}
  where \eqn{\alpha} and \eqn{\lambda} are the \code{shape} and \code{scale}
  parameters, respectively.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sgen.exp}} for GE survival / hazard etc. functions
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
## Load data set
data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 5.28321139, lambda.est = 0.03229609

dgen.exp(bearings, 5.28321139, 0.03229609, log = FALSE)
pgen.exp(bearings, 5.28321139, 0.03229609, lower.tail = TRUE, 
    log.p = FALSE)
qgen.exp(0.25, 5.28321139, 0.03229609, lower.tail = TRUE, log.p = FALSE)
rgen.exp(10, 5.28321139, 0.03229609)
}

\keyword{distribution}




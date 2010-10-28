\name{ExpExt}

\alias{ExpExt}
\alias{dexp.ext}
\alias{pexp.ext}
\alias{qexp.ext}
\alias{rexp.ext}

\title{The Exponential Extension(EE) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Exponential Extension(EE)
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dexp.ext(x, alpha, lambda, log = FALSE)
pexp.ext(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qexp.ext(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rexp.ext(n, alpha, lambda)
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

\details{
  The Exponential Extension(EE) distribution has density
\deqn{f(x) = \alpha \lambda \left(1+\lambda x\right)^{\alpha -1} \exp 
\left\{1-\left(1+\lambda x\right)^{\alpha } \right\} ;\, x\ge 0, \alpha >0, \lambda >0.}{
f(x) = \alpha \lambda (1 + \lambda x)^{\alpha - 1} exp(1 - (1 + \lambda x)^\alpha);  x \ge 0, \alpha > 0, \lambda > 0.}


  where \eqn{\alpha} and \eqn{\lambda} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dexp.ext} gives the density,
  \code{pexp.ext} gives the distribution function,
  \code{qexp.ext} gives the quantile function, and
  \code{rexp.ext} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sexp.ext}} for ExpExt survival / hazard etc. functions
}

\references{
Nikulin, M. and Haghighi, F. (2006).
\emph{A Chi-squared test for the generalized power Weibull family for the head-and-neck cancer censored data},
Journal of Mathematical Sciences, Vol. 133(3),  1333-1341.
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.0126e+01, lambda.est = 1.5848e-04
dexp.ext(sys2, 1.012556e+01, 1.5848e-04, log = FALSE)
pexp.ext(sys2, 1.012556e+01, 1.5848e-04, lower.tail = TRUE, log.p = FALSE)
qexp.ext(0.25, 1.012556e+01, 1.5848e-04, lower.tail=TRUE, log.p = FALSE)
rexp.ext(30, 1.012556e+01, 1.5848e-04)
}

\keyword{distribution}

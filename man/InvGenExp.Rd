\name{InvGenExp}

\alias{InvGenExp}
\alias{dinv.genexp}
\alias{pinv.genexp}
\alias{qinv.genexp}
\alias{rinv.genexp}

\title{The Inverse Generalized Exponential(IGE) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Inverse Generalized Exponential(IGE)
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dinv.genexp(x, alpha, lambda, log = FALSE)
pinv.genexp(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qinv.genexp(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rinv.genexp(n, alpha, lambda)
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
  The Inverse Generalized Exponential(IGE) distribution has density
  \deqn{f(x; \alpha, \lambda) = \frac{\alpha \; \lambda}{x^2}\; e^{-\lambda /x} \; \left\{1-e^{-\lambda /x}\right\}^{\alpha - 1};\; (\alpha, \lambda) > 0, x > 0}{
  f(x; \alpha, \lambda) = (\alpha \lambda)/x^2  exp{-\lambda/x} {1 - exp{-\lambda/x}}^{\alpha - 1};  (\alpha, \lambda) > 0, x > 0}
  where \eqn{\alpha} and \eqn{\lambda} are the \code{shape} and \code{scale}
  parameters, respectively.
}

\value{
  \code{dinv.genexp} gives the density,
  \code{pinv.genexp} gives the distribution function,
  \code{qinv.genexp} gives the quantile function, and
  \code{rinv.genexp} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sinv.genexp}} for Inverse Generalized Exponential(IGE) survival / hazard etc. functions
}

\references{
Gupta, R. D. and Kundu, D. (2001).
\emph{Exponentiated exponential family; an alternative to gamma and Weibull distributions},
 Biometrical Journal, 43(1), 117-130.

Gupta, R.D. and Kundu, D. (2007).
\emph{Generalized exponential distribution: Existing results and some recent development},
 Journal of Statistical Planning and Inference. 137, 3537-3547.
}

\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(repairtimes)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.097807, lambda.est = 1.206889
dinv.genexp(repairtimes, 1.097807, 1.206889, log = FALSE)
pinv.genexp(repairtimes, 1.097807, 1.206889, lower.tail = TRUE, log.p = FALSE)
qinv.genexp(0.25, 1.097807, 1.206889, lower.tail=TRUE, log.p = FALSE)
rinv.genexp(30, 1.097807, 1.206889)
}

\keyword{distribution}

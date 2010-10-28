\name{GPWeibull}

\alias{GPWeibull}
\alias{dgp.weibull}
\alias{pgp.weibull}
\alias{qgp.weibull}
\alias{rgp.weibull}

\title{The generalized power Weibull(GPW) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the generalized power Weibull(GPW)
  distribution with  shape parameters \code{alpha} and \code{theta}.}

\usage{
dgp.weibull(x, alpha, theta, log = FALSE)
pgp.weibull(q, alpha, theta, lower.tail = TRUE, log.p = FALSE)
qgp.weibull(p, alpha, theta, lower.tail = TRUE, log.p = FALSE)
rgp.weibull(n, alpha, theta)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{alpha}{shape  parameter.}
    \item{theta}{shape parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\details{
  The generalized power Weibull(GPW) distribution has density
\deqn{f(x) = \alpha \theta x^{\alpha -1} \left(1 + x^{\alpha} \right)^{\theta - 1} \exp\left\{1-\left(1+x^{\alpha}\right)^{\theta}\right\};\, x \ge 0, \alpha > 0, \theta > 0.}{
f(x) = \alpha \theta x^{\alpha - 1} (1 + x^\alpha)^{\theta - 1} exp{1 - (1 + x^\alpha)^\theta};  x \ge 0, \alpha > 0, \theta > 0.}
  where \eqn{\alpha} and \eqn{\theta} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dgp.weibull} gives the density,
  \code{pgp.weibull} gives the distribution function,
  \code{qgp.weibull} gives the quantile function, and
  \code{rgp.weibull} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sgp.weibull}} for generalized power Weibull(GPW) survival / hazard etc. functions
}

\references{
Nikulin, M. and Haghighi, F. (2006).
\emph{A Chi-squared test for the generalized power Weibull family for the head-and-neck cancer censored data},
Journal of Mathematical Sciences, Vol. 133(3), 1333-1341.

Pham, H. and Lai, C.D. (2007).
\emph{On recent generalizations of the Weibull distribution},
 IEEE Trans. on Reliability, Vol. 56(3), 454-458.
}

\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(repairtimes)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 1.566093, theta.est = 0.355321

dgp.weibull(repairtimes, 1.566093, 0.355321, log = FALSE)
pgp.weibull(repairtimes, 1.566093, 0.355321, lower.tail = TRUE, log.p = FALSE)
qgp.weibull(0.25, 1.566093, 0.355321, lower.tail=TRUE, log.p = FALSE)
rgp.weibull(30, 1.566093, 0.355321)
}


\keyword{distribution}

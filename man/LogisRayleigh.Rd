\name{LogisRayleigh}

\alias{LogisRayleigh}
\alias{dlogis.rayleigh}
\alias{plogis.rayleigh}
\alias{qlogis.rayleigh}
\alias{rlogis.rayleigh}

\title{The Logistic-Rayleigh(LR) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Logistic-Rayleigh(LR)
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dlogis.rayleigh(x, alpha, lambda, log = FALSE)
plogis.rayleigh(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qlogis.rayleigh(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rlogis.rayleigh(n, alpha, lambda)
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
  The cummulative distribution function(\emph{cdf}) of Logistic-Rayleigh(LR) is given by
\deqn{F(x) = 1 - \frac{1}{1+\left(e^{(\lambda x^2 / 2)} - 1\right)^{\alpha}};\, x \ge 0, \alpha > 0, \lambda > 0.}{
F(x) = 1  -  1 / {1 + (exp{(\lambda x^2 / 2)} - 1)^\alpha};  x \ge 0, \alpha > 0, \lambda > 0.} 

  where \eqn{\alpha} and \eqn{\lambda} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dlogis.rayleigh} gives the density,
  \code{plogis.rayleigh} gives the distribution function,
  \code{qlogis.rayleigh} gives the quantile function, and
  \code{rlogis.rayleigh} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{slogis.rayleigh}} for ExpExt survival / hazard etc. functions
}

\references{
Lan, Y. and Leemis, L. M. (2008).
\emph{The Logistic-Exponential Survival Distribution},
Naval Research Logistics, 55, 252-264.
}

\examples{
## Load data sets
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.4779388, lambda.est = 0.2141343
dlogis.rayleigh(stress, 1.4779388, 0.2141343, log = FALSE)
plogis.rayleigh(stress, 1.4779388, 0.2141343, lower.tail = TRUE, log.p = FALSE)
qlogis.rayleigh(0.25, 1.4779388, 0.2141343, lower.tail=TRUE, log.p = FALSE)
rlogis.rayleigh(30, 1.4779388, 0.2141343)
}

\keyword{distribution}

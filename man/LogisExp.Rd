\name{LogisExp}

\alias{LogisExp}
\alias{dlogis.exp}
\alias{plogis.exp}
\alias{qlogis.exp}
\alias{rlogis.exp}

\title{The Logistic-Exponential(LE) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Logistic-Exponential(LE)
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dlogis.exp(x, alpha, lambda, log = FALSE)
plogis.exp(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qlogis.exp(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rlogis.exp(n, alpha, lambda)
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
  The Logistic-Exponential(LE) distribution has density
\deqn{f(x) = \frac{\lambda \; \alpha \; e^{\lambda x} \left(e^{\lambda x} -1\right)^{\alpha -1} }{\left\{1+\left(e^{\lambda x} -1\right)^{\alpha } \right\}^2 };\, x\ge 0,\; \alpha >0,\; \lambda >0.}{
f(x) = (\lambda \alpha exp(\lambda x) (exp{\lambda x} - 1)^{\alpha - 1}) / {{1 + (exp{\lambda x} - 1)^\alpha}^2};  x \ge 0, \alpha > 0, \lambda > 0.} 


  where \eqn{\alpha} and \eqn{\lambda} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dlogis.exp} gives the density,
  \code{plogis.exp} gives the distribution function,
  \code{qlogis.exp} gives the quantile function, and
  \code{rlogis.exp} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{slogis.exp}} for ExpExt survival / hazard etc. functions
}

\references{
Lan, Y. and Leemis, L. M. (2008).
\emph{The Logistic-Exponential Survival Distribution},
Naval Research Logistics, 55, 252-264.
}

\examples{
## Load data sets
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 2.36754, lambda.est = 0.01059
dlogis.exp(bearings, 2.36754, 0.01059, log = FALSE)
plogis.exp(bearings, 2.36754, 0.01059, lower.tail = TRUE, log.p = FALSE)
qlogis.exp(0.25, 2.36754, 0.01059, lower.tail=TRUE, log.p = FALSE)
rlogis.exp(30, 2.36754, 0.01059)
}

\keyword{distribution}

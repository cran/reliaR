\name{MOEE}

\alias{MOEE}
\alias{dmoee}
\alias{pmoee}
\alias{qmoee}
\alias{rmoee}

\title{The Marshall-Olkin Extended Exponential (MOEE) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Marshall-Olkin Extended Exponential (MOEE) 
  distribution with tilt parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dmoee(x, alpha, lambda, log = FALSE)
pmoee(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qmoee(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rmoee(n, alpha, lambda)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{alpha}{tilt  parameter.}
    \item{lambda}{scale parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\details{
  The Marshall-Olkin extended exponential (MOEE) distribution has density
  \deqn{f(x; \alpha, \lambda) = \frac{\alpha \lambda e^{-\lambda x}}{\left\{1-(1-\alpha) e^{-\lambda x} \right\}^2};\, x > 0, \lambda > 0, \alpha > 0}{
  f(x; \alpha, \lambda) = {\alpha \lambda exp(-\lambda x)} / {(1 - (1 - \alpha) exp{-\lambda x})^2};  x > 0, \lambda > 0, \alpha > 0}
  where \eqn{\alpha} and \eqn{\lambda} are the \code{tilt} and \code{scale}
  parameters, respectively.

}

\value{
  \code{dmoee} gives the density,
  \code{pmoee} gives the distribution function,
  \code{qmoee} gives the quantile function, and
  \code{rmoee} generates random deviates.
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

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{smoee}} for MOEE survival / hazard etc. functions
}

\examples{
## Load data sets
data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 75.67982, lambda.est = 1.67576
dmoee(stress, 75.67982, 1.67576, log = FALSE)
pmoee(stress, 75.67982, 1.67576, lower.tail = TRUE, 
    log.p = FALSE)
qmoee(0.25, 0.4, 2.0, lower.tail = TRUE, log.p = FALSE)
rmoee(10, 75.67982, 1.67576)
}

\keyword{distribution}




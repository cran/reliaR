\name{Gompertz}

\alias{Gompertz}
\alias{dgompertz}
\alias{pgompertz}
\alias{qgompertz}
\alias{rgompertz}

\title{The Gompertz distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Gompertz
  distribution with  shape parameter \code{alpha} and scale parameter \code{theta}.}

\usage{
dgompertz(x, alpha, theta, log = FALSE)
pgompertz(q, alpha, theta, lower.tail = TRUE, log.p = FALSE)
qgompertz(p, alpha, theta, lower.tail = TRUE, log.p = FALSE)
rgompertz(n, alpha, theta)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{alpha}{shape  parameter.}
    \item{theta}{scale parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\details{
  The Gompertz distribution has density
\deqn{f(x) = \theta e^{\alpha x} \exp\left\{\frac{\theta}{\alpha}\left(1 - e^{\alpha x}\right)\right\};\, x \ge 0, \theta > 0, -\infty < \alpha < \infty.}{
f(x) = \theta exp(\alpha x) exp{\theta/\alpha (1 - exp{\alpha x})};  x \ge 0, \theta > 0, -\infty < \alpha < \infty.}
  where \eqn{\alpha} and \eqn{\theta} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dgompertz} gives the density,
  \code{pgompertz} gives the distribution function,
  \code{qgompertz} gives the quantile function, and
  \code{rgompertz} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sgompertz}} for Gompertz survival / hazard etc. functions
}

\references{
Marshall, A. W., Olkin, I. (2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families}, Springer, New York.
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(sys2)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 0.00121307, theta.est = 0.00173329

dgompertz(sys2, 0.00121307, 0.00173329, log = FALSE)
pgompertz(sys2, 0.00121307, 0.00173329, lower.tail = TRUE, log.p = FALSE)
qgompertz(0.25, 0.00121307, 0.00173329, lower.tail=TRUE, log.p = FALSE)
rgompertz(30, 0.00121307, 0.00173329)
}

\keyword{distribution}

\name{Gumbel}

\alias{Gumbel}
\alias{dgumbel}
\alias{pgumbel}
\alias{qgumbel}
\alias{rgumbel}

\title{The Gumbel distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Gumbel
  distribution with  location parameter \code{mu} and scale parameter \code{sigma}.}

\usage{
dgumbel(x, mu, sigma, log = FALSE)
pgumbel(q, mu, sigma, lower.tail = TRUE, log.p = FALSE)
qgumbel(p, mu, sigma, lower.tail = TRUE, log.p = FALSE)
rgumbel(n, mu, sigma)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{mu}{location  parameter.}
    \item{sigma}{scale parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\details{
  The Gumbel distribution has density
\deqn{f(x) = \frac{1}{\sigma} \; \exp\left\{-\left(\frac{x-\mu}{\sigma}\right)\right\} \; \exp\left[-\exp\left\{-\left(\frac{x-\mu}{\sigma}\right)\right\}\right];\, -\infty < x < \infty, \sigma > 0.}{
f(x) = 1/\sigma  exp{-((x-\mu)/\sigma)}  exp[-exp{-((x-\mu)/\sigma)}];  -\infty < x < \infty, \sigma > 0.} 
  where \eqn{\mu} and \eqn{\sigma} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dgumbel} gives the density,
  \code{pgumbel} gives the distribution function,
  \code{qgumbel} gives the quantile function, and
  \code{rgumbel} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sgumbel}} for Gumbel survival / hazard etc. functions
}

\references{
Marshall, A. W., Olkin, I. (2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}

\examples{
## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of mu & sigma for the data(dataset2)
## Estimates of mu & sigma using 'maxLik' package
## mu.est = 212.157, sigma.est = 151.768

dgumbel(dataset2, 212.157, 151.768, log = FALSE)
pgumbel(dataset2, 212.157, 151.768, lower.tail = TRUE, log.p = FALSE)
qgumbel(0.25, 212.157, 151.768, lower.tail=TRUE, log.p = FALSE)
rgumbel(30, 212.157, 151.768)
}

\keyword{distribution}

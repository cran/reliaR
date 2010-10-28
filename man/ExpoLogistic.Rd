\name{ExpoLogistic}

\alias{ExpoLogistic}
\alias{dexpo.logistic}
\alias{pexpo.logistic}
\alias{qexpo.logistic}
\alias{rexpo.logistic}

\title{The Exponentiated Logistic(EL) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Exponentiated Logistic(EL)
  distribution with shape parameter \code{alpha} and scale parameter \code{beta}.}

\usage{
dexpo.logistic(x, alpha, beta, log = FALSE)
pexpo.logistic(q, alpha, beta, lower.tail = TRUE, log.p = FALSE)
qexpo.logistic(p, alpha, beta, lower.tail = TRUE, log.p = FALSE)
rexpo.logistic(n, alpha, beta)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{alpha}{shape  parameter.}
    \item{beta}{scale parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\details{
  The Exponentiated Logistic(EL) distribution has density
\deqn{f(x; \alpha, \beta) = \frac{\alpha}{\beta} \exp\left(-\frac{x}{\beta}\right)\left\{1+\exp\left(-\frac{x}{\beta}\right)\right\}^{-(\alpha + 1)};\; (\alpha, \beta) > 0, x > 0}{
f(x; \alpha, \beta) = \alpha/\beta  exp(-x/\beta){1 + exp(-x/\beta)}^{-(\alpha + 1)};  (\alpha, \beta) > 0, x > 0}

  where \eqn{\alpha} and \eqn{\beta} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dexpo.logistic} gives the density,
  \code{pexpo.logistic} gives the distribution function,
  \code{qexpo.logistic} gives the quantile function, and
  \code{rexpo.logistic} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sexpo.logistic}} for Exponentiated Logistic(EL) survival / hazard etc. functions
}

\references{
Ali, M.M., Pal, M. and Woo, J. (2007).
\emph{Some Exponentiated Distributions},
The Korean Communications in Statistics, 14(1), 93-109.

Shirke, D.T., Kumbhar, R.R. and Kundu, D. (2005).
\emph{Tolerance intervals for exponentiated scale family of distributions},
Journal of Applied Statistics, 32, 1067-1074
}

\examples{
## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(dataset2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 5.31302, beta.est = 139.04515

dexpo.logistic(dataset2, 5.31302, 139.04515, log = FALSE)
pexpo.logistic(dataset2, 5.31302, 139.04515, lower.tail = TRUE, log.p = FALSE)
qexpo.logistic(0.25, 5.31302, 139.04515, lower.tail=TRUE, log.p = FALSE)
rexpo.logistic(30, 5.31302, 139.04515)
}


\keyword{distribution}

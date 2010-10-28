\name{WeibullExt}

\alias{WeibullExt}
\alias{dweibull.ext}
\alias{pweibull.ext}
\alias{qweibull.ext}
\alias{rweibull.ext}

\title{The Weibull Extension(WE) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Weibull Extension(WE)
  distribution with shape parameter \code{alpha} and scale parameter \code{beta}.}

\usage{
dweibull.ext(x, alpha, beta, log = FALSE)
pweibull.ext(q, alpha, beta, lower.tail = TRUE, log.p = FALSE)
qweibull.ext(p, alpha, beta, lower.tail = TRUE, log.p = FALSE)
rweibull.ext(n, alpha, beta)
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
  The Weibull Extension(WE) distribution has density
\deqn{f(x; \alpha, \beta) = \beta \left(\frac{x}{\alpha}\right)^{\beta - 1} \exp\left(\frac{x}{\alpha}\right)^{\beta}\; \exp\left\{-\alpha\;\left(\exp\left(\frac{x}{\alpha}\right)^{\beta} - 1\right)\right\};\; (\alpha, c \beta) > 0, x > 0}{
f(x; \alpha, \beta) = \beta (x/\alpha)^{\beta - 1} exp(x/\alpha)^\beta exp{-\alpha(exp(x/\alpha)^\beta - 1)};  (\alpha, c \beta) > 0, x > 0}
  where \eqn{\alpha} and \eqn{\beta} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dweibull.ext} gives the density,
  \code{pweibull.ext} gives the distribution function,
  \code{qweibull.ext} gives the quantile function, and
  \code{rweibull.ext} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sweibull.ext}} for Weibull Extension(WE) survival / hazard etc. functions
}

\references{
Murthy, D.N.P., Xie, M. and Jiang, R. (2003).
\emph{Weibull Models}, Wiley, New York

Tang, Y., Xie, M. and Goh, T.N., (2003).
\emph{Statistical analysis of a Weibull extension model},
Communications in Statistics: Theory & Methods 32(5):913-928.

Xie, M., Tang, Y., Goh, T.N., (2002).
\emph{A modified Weibull extension with bathtub-shaped failure rate function},
Reliability Engineering System Safety 76(3):279-285.

Zhang, T., and Xie, M.(2007).
\emph{Failure Data Analysis with Extended Weibull Distribution},
Communications in Statistics-Simulation and Computation, 36(3), 579-592.
}


\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.00019114, beta.est = 0.14696242

dweibull.ext(sys2, 0.00019114, 0.14696242, log = FALSE)
pweibull.ext(sys2, 0.00019114, 0.14696242, lower.tail = TRUE, log.p = FALSE)
qweibull.ext(0.25, 0.00019114, 0.14696242, lower.tail=TRUE, log.p = FALSE)
rweibull.ext(30, 0.00019114, 0.14696242)
}

\keyword{distribution}

\name{FlexWeibull}

\alias{FlexWeibull}
\alias{dflex.weibull}
\alias{pflex.weibull}
\alias{qflex.weibull}
\alias{rflex.weibull}

\title{The flexible Weibull(FW) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the flexible Weibull(FW)
  distribution with parameters \code{alpha} and  \code{beta}.}

\usage{
dflex.weibull(x, alpha, beta, log = FALSE)
pflex.weibull(q, alpha, beta, lower.tail = TRUE, log.p = FALSE)
qflex.weibull(p, alpha, beta, lower.tail = TRUE, log.p = FALSE)
rflex.weibull(n, alpha, beta)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{alpha}{parameter.}
    \item{beta}{parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\details{
  The flexible Weibull(FW) distribution has density
\deqn{f(x) = \left(\alpha + \frac{\beta}{x^2}\right) \exp\left(\alpha \, x - \frac{\beta}{x}\right)\, \exp\left\{-\exp\left(\alpha x - \frac{\beta}{x}\right)\right\};\, x \ge 0, \alpha > 0, \beta > 0.}{
f(x) = (\alpha + \beta/(x^2)) exp(\alpha x - \beta/x) exp{-exp(\alpha x - \beta/x)};  x \ge 0, \alpha > 0, \beta > 0.} 
  where \eqn{\alpha} and \eqn{\beta} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dflex.weibull} gives the density,
  \code{pflex.weibull} gives the distribution function,
  \code{qflex.weibull} gives the quantile function, and
  \code{rflex.weibull} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sflex.weibull}} for flexible Weibull(FW) survival / hazard etc. functions
}

\references{
Bebbington, M., Lai, C.D. and Zitikis, R. (2007).
\emph{A flexible Weibull extension},
Reliability Engineering and System Safety, 92, 719-726.
}

\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(repairtimes)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.07077507, beta.est = 1.13181535

dflex.weibull(repairtimes, 0.07077507, 1.13181535, log = FALSE)
pflex.weibull(repairtimes, 0.07077507, 1.13181535, lower.tail = TRUE, log.p = FALSE)
qflex.weibull(0.25, 0.07077507, 1.13181535, lower.tail=TRUE, log.p = FALSE)
rflex.weibull(30, 0.07077507, 1.13181535)
}

\keyword{distribution}

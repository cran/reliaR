\name{ExpoWeibull}

\alias{ExpoWeibull}
\alias{dexpo.weibull}
\alias{pexpo.weibull}
\alias{qexpo.weibull}
\alias{rexpo.weibull}

\title{The Exponentiated Weibull(EW) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Exponentiated Weibull(EW)
  distribution with  shape parameters \code{alpha} and \code{theta}.}

\usage{
dexpo.weibull(x, alpha, theta, log = FALSE)
pexpo.weibull(q, alpha, theta, lower.tail = TRUE, log.p = FALSE)
qexpo.weibull(p, alpha, theta, lower.tail = TRUE, log.p = FALSE)
rexpo.weibull(n, alpha, theta)
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
  The Exponentiated Weibull(EW) distribution has density
\deqn{f(x; \alpha, \theta) = \alpha \; \theta \; x^{\alpha - 1} \; 
e^{-x^{\alpha}} \left\{1-\exp \left(-x^{\alpha}\right)\right\}^{\theta -1};\; (\alpha, \theta) > 0, x > 0}{
f(x; \alpha, \theta) = \alpha \theta x^{\alpha - 1} exp{-x^\alpha}{1 - exp(-x^\alpha)}^{\theta - 1};  (\alpha, \theta) > 0, x > 0} 
  where \eqn{\alpha} and \eqn{\theta} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dexpo.weibull} gives the density,
  \code{pexpo.weibull} gives the distribution function,
  \code{qexpo.weibull} gives the quantile function, and
  \code{rexpo.weibull} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sexpo.weibull}} for Exponentiated Weibull(EW) survival / hazard etc. functions
}

\references{
Mudholkar, G.S. and Srivastava, D.K. (1993).
\emph{Exponentiated Weibull family for analyzing bathtub failure-rate data},
IEEE Transactions on Reliability, 42(2), 299-302.

Murthy, D.N.P., Xie, M. and Jiang, R. (2003).
\emph{Weibull Models}, Wiley, New York.

Nassar, M.M., and Eissa, F. H. (2003).
\emph{On the Exponentiated Weibull Distribution},
Communications in Statistics - Theory and Methods, 32(7), 1317-1336.
}

\examples{
## Load data sets
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(stress)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est =1.026465, theta.est = 7.824943

dexpo.weibull(stress, 1.026465, 7.824943, log = FALSE)
pexpo.weibull(stress, 1.026465, 7.824943, lower.tail = TRUE, log.p = FALSE)
qexpo.weibull(0.25, 1.026465, 7.824943, lower.tail=TRUE, log.p = FALSE)
rexpo.weibull(30, 1.026465, 7.824943)
}

\keyword{distribution}

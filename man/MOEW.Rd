\name{MOEW}

\alias{MOEW}
\alias{dmoew}
\alias{pmoew}
\alias{qmoew}
\alias{rmoew}

\title{The Marshall-Olkin Extended Weibull (MOEW) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Marshall-Olkin Extended Weibull (MOEW) 
  distribution with tilt parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dmoew(x, alpha, lambda, log = FALSE)
pmoew(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qmoew(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rmoew(n, alpha, lambda)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{alpha}{shape  parameter.}
    \item{lambda}{tilt parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\details{
  The Marshall-Olkin extended Weibull (MOEW) distribution has density  
\deqn{f(x) = \frac{{\lambda \alpha x^{\alpha - 1} \exp\left({-x^\alpha}\right)}}{{\left\{{1 - (1 - \lambda)\;\exp\left({-x^\alpha}\right)}\right\}^2}};\, x > 0, \lambda > 0, \alpha > 0}{
f(x) = {\lambda \alpha x^{\alpha - 1} exp(-x^\alpha)} / {{1 - (1 - \lambda) \exp(-x^\alpha)}^2};  x > 0, \lambda > 0, \alpha > 0}
  
  where \eqn{\alpha} and \eqn{\lambda} are the \code{tilt} and \code{scale} 
  parameters, respectively. 
}
\value{
  \code{dmoew} gives the density,
  \code{pmoew} gives the distribution function,
  \code{qmoew} gives the quantile function, and
  \code{rmoew} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{smoew}} for MOEW survival / hazard etc. functions;
}

\references{
  Marshall, A. W., Olkin, I. (1997).
  \emph{A new method for adding a parameter to a family
of distributions with application to the Weibull and Weibull families.}
  Biometrika,84(3):641-652.

  Marshall, A. W., Olkin, I.(2007).
  \emph{Life Distributions: Structure of Nonparametric,
Semiparametric, and Parametric Families.}
  Springer, New York.
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.3035937,  lambda.est = 279.2177754

dmoew(sys2, 0.3035937, 279.2177754, log = FALSE)
pmoew(sys2, 0.3035937, 279.2177754, lower.tail = TRUE, log.p = FALSE)
qmoew(0.25, 0.3035937, 279.2177754, lower.tail=TRUE, log.p = FALSE)
rmoew(50, 0.3035937, 279.2177754)
}

\keyword{distribution}


  

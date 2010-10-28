\name{ExpPower}

\alias{ExpPower}
\alias{dexp.power}
\alias{pexp.power}
\alias{qexp.power}
\alias{rexp.power}

\title{The Exponential Power distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Exponential Power
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dexp.power(x, alpha, lambda, log = FALSE)
pexp.power(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qexp.power(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rexp.power(n, alpha, lambda)
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
  
  The probability density function of exponential power distribution is 
\deqn{f(x; \alpha, \lambda) = \alpha \lambda^\alpha x^{\alpha - 1} e^{\left({\lambda x}\right)^\alpha} \exp\left\{{1 - e^{\left({\lambda x}\right)^\alpha}}\right\};\;(\alpha, \lambda) > 0, x > 0.}{
f(x; \alpha, \lambda) = \alpha \lambda^\alpha x^{\alpha - 1} exp{(\lambda x)^\alpha} exp{1 - exp{(\lambda x)^\alpha}};  (\alpha, \lambda) > 0, x > 0.}

  where \eqn{\alpha} and \eqn{\lambda} are the \code{shape} and \code{scale} 
  parameters, respectively.
}

\value{
  \code{dexp.power} gives the density,
  \code{pexp.power} gives the distribution function,
  \code{qexp.power} gives the quantile function, and
  \code{rexp.power} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sexp.power}} for Exponential Power distribution survival / hazard etc. functions;
}

\references{
Chen, Z.(1999). 
\emph{Statistical inference about the shape parameter of the exponential power distribution},  Journal :Statistical Papers,  Vol. 40(4), 
459-468.

Pham, H. and Lai, C.D.(2007). 
\emph{On Recent Generalizations of theWeibull Distribution}, IEEE Trans. on Reliability, Vol. 56(3), 454-458.
 
Smith, R.M. and  Bain, L.J.(1975).
\emph{An exponential power life-test distribution}, Communications in Statistics - Simulation and Computation, 
Vol.4(5), 469 - 481
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.905868898, lambda.est =  0.001531423

dexp.power(sys2, 0.905868898, 0.001531423, log = FALSE)
pexp.power(sys2, 0.905868898, 0.001531423, lower.tail = TRUE, log.p = FALSE)
qexp.power(0.25, 0.905868898, 0.001531423, lower.tail=TRUE, log.p = FALSE)
rexp.power(30, 0.905868898, 0.001531423)
}

\keyword{distribution}






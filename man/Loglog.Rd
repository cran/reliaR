\name{Loglog}

\alias{Loglog}
\alias{dloglog}
\alias{ploglog}
\alias{qloglog}
\alias{rloglog}

\title{The Loglog distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Loglog 
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dloglog(x, alpha, lambda, log = FALSE)
ploglog(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qloglog(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rloglog(n, alpha, lambda)
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
  
  The loglog(Pham) distribution has density

\deqn{f(x) = \alpha \ln \left(\lambda\right) x^{\alpha  - 1} \lambda^{x^\alpha} \exp\left\{{1 - \lambda ^{x^\alpha}}\right\};\; x > 0, \lambda > 0, \alpha > 0}{
f(x) = \alpha ln(\lambda) x^{\alpha - 1} \lambda^{x^\alpha} exp{1 - \lambda^(x^\alpha)};  x > 0, \lambda > 0, \alpha > 0}
  where \eqn{\alpha} and \eqn{\lambda} are the \code{shape} and \code{scale} 
  parameters, respectively. (Pham, 2002) 
}

\value{
  \code{dloglog} gives the density,
  \code{ploglog} gives the distribution function,
  \code{qloglog} gives the quantile function, and
  \code{rloglog} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sloglog}} for Loglog survival / hazard etc. functions;
}

\references{
Pham, H.(2002). 
\emph{A Vtub-Shaped Hazard Rate Function with Applications to System Safety}, International Journal of Reliability and 
Applications. ,Vol. 3, No. l,  pp. 1-16.

Pham, H.(2006). 
\emph{System Software Reliability}, Springer-Verlag.
}
\examples{
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.9058689 lambda.est = 1.0028228

dloglog(sys2, 0.9058689, 1.0028228, log = FALSE)
ploglog(sys2, 0.9058689, 1.0028228, lower.tail = TRUE, log.p = FALSE)
qloglog(0.25, 0.9058689, 1.0028228, lower.tail=TRUE, log.p = FALSE)
rloglog(30, 0.9058689, 1.0028228)
}

\keyword{distribution}






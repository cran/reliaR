\name{Chen}

\alias{Chen}
\alias{dchen}
\alias{pchen}
\alias{qchen}
\alias{rchen}

\title{The Chen distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the Chen 
  distribution with shape parameter \code{beta} and scale parameter \code{lambda}.}

\usage{
dchen(x, beta, lambda, log = FALSE)
pchen(q, beta, lambda, lower.tail = TRUE, log.p = FALSE)
qchen(p, beta, lambda, lower.tail = TRUE, log.p = FALSE)
rchen(n, beta, lambda)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{beta}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\details{
  
  The Chen distribution has density

\deqn{f(x; \lambda, \beta) = \lambda \beta x^{\beta -1} \exp \left(x^{\beta} \right) \exp \left[\lambda \left\{1-\exp \left(x^{\beta} 
\right)\right\}\right];\; (\lambda ,\; \beta )>0,\; x > 0,}{
f(x; \lambda, \beta) = \lambda \beta x^{\beta - 1} exp(x^\beta) exp(\lambda{1 - exp(x^{\beta})});  (\lambda, \beta) > 0, x > 0,
}

  where \eqn{\beta} and \eqn{\lambda} are the \code{shape} and \code{scale} 
  parameters, respectively.
}


\value{
  \code{dchen} gives the density,
  \code{pchen} gives the distribution function,
  \code{qchen} gives the quantile function, and
  \code{rchen} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{schen}} for Chen survival / hazard etc. functions
}


\references{
Chen, Z. (2000).  
\emph{A new two-parameter lifetime distribution with bathtub shape or increasing failure rate function}, Statistics & Probability 
 Letters, 49, 155-161.
 
Murthy, D.N.P., Xie, M. and Jiang, R. (2004). 
\emph{Weibull Models}, Wiley, New York.

Pham, H. (2006). 
\emph{System Software Reliability}, Springer-Verlag.

Pham, H. and Lai, C.D. (2007). \emph{On recent generalizations of the Weibull distribution}, IEEE Trans. on Reliability, Vol. 56(3), 454-458.
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of beta & lambda for the data(sys2)
## beta.est = 0.262282404, lambda.est = 0.007282371

dchen(sys2, 0.262282404, 0.007282371, log = FALSE)
pchen(sys2, 0.262282404, 0.007282371, lower.tail = TRUE, 
    log.p = FALSE)
qchen(0.25, 0.262282404, 0.007282371, lower.tail = TRUE, log.p = FALSE)
rchen(10, 0.262282404, 0.007282371)
}

\keyword{distribution}


    

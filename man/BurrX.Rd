\name{BurrX}

\alias{BurrX}
\alias{dburrX}
\alias{pburrX}
\alias{qburrX}
\alias{rburrX}

\title{The BurrX (Generalized Rayleigh) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the BurrX
  distribution with shape parameter \code{alpha} and scale parameter \code{lambda}.}

\usage{
dburrX(x, alpha, lambda, log = FALSE)
pburrX(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qburrX(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rburrX(n, alpha, lambda)
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
  The BurrX distribution has density
\deqn{f(x; \alpha, \lambda) =  2 \alpha  \lambda^2 x e^{-(\lambda x)^2} \left\{1-e^{-(\lambda x)^2} \right\}^{\alpha -1}; (\alpha, \lambda) > 0, x >0.}{f(x; \alpha, \lambda) = 2 \alpha \lambda^2 x exp(-(\lambda x)^2)(1 - exp(-(\lambda x)^2))^{\alpha - 1}; (\alpha, \lambda) > 0, x > 0.}
  where \eqn{\alpha} and \eqn{\lambda} are the \code{shape} and \code{scale}
  parameters, respectively.
}

\value{
  \code{dburrX} gives the density,
  \code{pburrX} gives the distribution function,
  \code{qburrX} gives the quantile function, and
  \code{rburrX} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{sburrX}} for BurrX survival / hazard etc. functions
}

\references{
Kundu, D., and Raqab, M.Z. (2005).
\emph{Generalized Rayleigh Distribution: Different Methods of Estimation},
Computational Statistics and Data Analysis, 49, 187-200.

Surles, J.G., and Padgett, W.J. (2005).
\emph{Some properties of a scaled Burr type X distribution},
Journal of Statistical Planning and Inference, 128, 271-280.

Raqab, M.Z., and Kundu, D. (2006).
\emph{Burr Type X distribution: revisited},
Journal of Probability and Statistical Sciences, 4(2), 179-193.
}

\examples{
## Load data sets
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.1989515, lambda.est = 0.0130847

dburrX(bearings, 1.1989515, 0.0130847, log = FALSE)
pburrX(bearings, 1.1989515, 0.0130847, lower.tail = TRUE, log.p = FALSE)
qburrX(0.25, 1.1989515, 0.0130847, lower.tail=TRUE, log.p = FALSE)
rburrX(30, 1.1989515, 0.0130847)
}

\keyword{distribution}

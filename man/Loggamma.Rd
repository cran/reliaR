\name{Loggamma}

\alias{Loggamma}
\alias{dlog.gamma}
\alias{plog.gamma}
\alias{qlog.gamma}
\alias{rlog.gamma}

\title{The log-gamma(LG) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the log-gamma(LG)
  distribution with parameters \code{alpha} and  \code{lambda}.}

\usage{
dlog.gamma(x, alpha, lambda, log = FALSE)
plog.gamma(q, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
qlog.gamma(p, alpha, lambda, lower.tail = TRUE, log.p = FALSE)
rlog.gamma(n, alpha, lambda)
}

\arguments{
    \item{x,q}{vector of quantiles.}
    \item{p}{vector of probabilities.}
    \item{n}{number of observations. If \code{length(n) > 1}, the length
        is taken to be the number required.}
    \item{alpha}{parameter.}
    \item{lambda}{parameter.}
    \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
    \item{lower.tail}{logical; if TRUE (default), probabilities are
        \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
}

\details{
  The log-gamma(LG) distribution has density
\deqn{f(x; \alpha, \lambda) = \alpha \lambda \exp\left\{\lambda x\right\} \exp\left\{-\alpha \exp{\lambda x}\right\};\; (\alpha, \lambda) > 0, x > 0}{
f(x; \alpha, \lambda) = \alpha \lambda exp(\lambda x) exp{-\alpha exp(\lambda x)};  (\alpha, \lambda) > 0, x > 0} 


  where \eqn{\alpha} and \eqn{\lambda} are the 
  parameters, respectively.
}
\value{
  \code{dlog.gamma} gives the density,
  \code{plog.gamma} gives the distribution function,
  \code{qlog.gamma} gives the quantile function, and
  \code{rlog.gamma} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{slog.gamma}} for ExpExt survival / hazard etc. functions
}

\references{
Klugman, S., Panjer, H. and Willmot, G. (2004).
\emph{Loss Models: From Data to Decisions}, 2nd ed., New York, Wiley.

Lawless, J. F., (2003).
\emph{Statistical Models and Methods for Lifetime Data},
2nd ed., John Wiley and Sons, New York.
}

\examples{
## Load data sets
data(conductors)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(conductors)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 0.0088741, lambda.est = 0.6059935
dlog.gamma(conductors, 0.0088741, 0.6059935, log = FALSE)
plog.gamma(conductors, 0.0088741, 0.6059935, lower.tail = TRUE, log.p = FALSE)
qlog.gamma(0.25, 0.0088741, 0.6059935, lower.tail=TRUE, log.p = FALSE)
rlog.gamma(30, 0.0088741, 0.6059935)
}

\keyword{distribution}

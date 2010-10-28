\name{LFR}

\alias{LFR}
\alias{dlfr}
\alias{plfr}
\alias{qlfr}
\alias{rlfr}

\title{The linear failure rate(LFR) distribution}

\description{
  Density, distribution function, quantile function and random
  generation for the linear failure rate(LFR)
  distribution with parameters \code{alpha} and  \code{beta}.}

\usage{
dlfr(x, alpha, beta, log = FALSE)
plfr(q, alpha, beta, lower.tail = TRUE, log.p = FALSE)
qlfr(p, alpha, beta, lower.tail = TRUE, log.p = FALSE)
rlfr(n, alpha, beta)
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
  The linear failure rate(LFR) distribution has density
\deqn{f(x) = \left(\alpha + \beta x\right)\; \exp\left\{-\left(\alpha x + \frac{\beta x^2}{2}\right)\right\};\, x \ge 0, \alpha > 0, \beta > 0.}{
f(x) = (\alpha + \beta x)  exp{-(\alpha x + (\beta x^2)/2)};  x \ge 0, \alpha > 0, \beta > 0.} 
  where \eqn{\alpha} and \eqn{\beta} are the \code{shape} and \code{scale}
  parameters, respectively.
}
\value{
  \code{dlfr} gives the density,
  \code{plfr} gives the distribution function,
  \code{qlfr} gives the quantile function, and
  \code{rlfr} generates random deviates.
}

\seealso{
\code{\link{.Random.seed}} about random number; \code{\link{slfr}} for linear failure rate(LFR) survival / hazard etc. functions
}

\references{
Bain, L.J. (1974).
\emph{Analysis for the Linear Failure-Rate Life-Testing Distribution},
Technometrics, 16(4), 551 - 559.

Lawless, J.F.(2003).
\emph{Statistical Models and Methods for Lifetime Data},
John Wiley and Sons, New York.

Sen, A. and Bhattacharya, G.K.(1995).
\emph{Inference procedure for the linear failure rate mode},
Journal of Statistical Planning and Inference, 46, 59-76.
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 1.77773e-03,  beta.est = 2.77764e-06

dlfr(sys2, 1.777673e-03, 2.777640e-06, log = FALSE)
plfr(sys2, 1.777673e-03, 2.777640e-06, lower.tail = TRUE, log.p = FALSE)
qlfr(0.25, 1.777673e-03, 2.777640e-06, lower.tail=TRUE, log.p = FALSE)
rlfr(30, 1.777673e-03, 2.777640e-06)
}
\keyword{distribution}

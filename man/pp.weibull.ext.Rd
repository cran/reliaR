\name{pp.weibull.ext}
\alias{pp.weibull.ext}

\title{
Probability versus Probability (PP) plot for the Weibull Extension(WE) distribution
}
\description{
The function \code{pp.weibull.ext()} produces a PP plot for the Weibull Extension(WE) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.weibull.ext(x, alpha.est, beta.est, main = " ", line = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{pp.weibull.ext()} carries out a PP plot for the Weibull Extension(WE).
}

\references{
Tang, Y., Xie, M. and Goh, T.N., (2003).
\emph{Statistical analysis of a Weibull extension model},
Communications in Statistics: Theory & Methods 32(5):913-928.

Zhang, T., and Xie, M.(2007).
\emph{Failure Data Analysis with Extended Weibull Distribution},
Communications in Statistics-Simulation and Computation, 36(3), 579-592.
}

\seealso{
\code{\link{qq.weibull.ext}} for \code{QQ} plot  and \code{\link{ks.weibull.ext}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.00019114, beta.est = 0.14696242

pp.weibull.ext(sys2, 0.00019114, 0.14696242, main = " ", line = TRUE)
}

\keyword{hplot}

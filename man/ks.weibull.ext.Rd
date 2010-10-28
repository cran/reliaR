\name{ks.weibull.ext}
\alias{ks.weibull.ext}

\title{Test of Kolmogorov-Smirnov for the Weibull Extension(WE) distribution}
\description{
The function \code{ks.weibull.ext()} gives the values for the KS test assuming a Weibull Extension(WE) with shape
  parameter alpha and scale parameter beta. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.weibull.ext(x, alpha.est, beta.est, 
    alternative = c("less", "two.sided", "greater"), plot = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations.}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{alternative}{indicates the alternative hypothesis and must be one of \code{"two.sided"} (default), \code{"less"}, or \code{"greater"}.}
  \item{plot}{Logical; if TRUE, the cdf plot is provided.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\details{The Kolmogorov-Smirnov test is a goodness-of-fit technique based on the maximum distance between the empirical and theoretical cdfs.}
\value{The function \code{ks.weibull.ext()} carries out the KS test for the Weibull Extension(WE)}

\references{
Tang, Y., Xie, M. and Goh, T.N., (2003).
\emph{Statistical analysis of a Weibull extension model},
Communications in Statistics: Theory & Methods 32(5):913-928.

Zhang, T., and Xie, M.(2007).
\emph{Failure Data Analysis with Extended Weibull Distribution},
Communications in Statistics-Simulation and Computation, 36(3), 579-592.
}

\seealso{
\code{\link{pp.weibull.ext}} for \code{PP} plot and \code{\link{qq.weibull.ext}} for \code{QQ} plot
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.00019114, beta.est = 0.14696242

ks.weibull.ext(sys2, 0.00019114, 0.14696242, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

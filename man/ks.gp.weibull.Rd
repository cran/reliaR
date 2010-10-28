\name{ks.gp.weibull}
\alias{ks.gp.weibull}

\title{Test of Kolmogorov-Smirnov for the generalized power Weibull(GPW) distribution}
\description{
The function \code{ks.gp.weibull()} gives the values for the KS test assuming a generalized power Weibull(GPW) with shape
  parameter alpha and scale parameter theta. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.gp.weibull(x, alpha.est, theta.est, 
    alternative = c("less", "two.sided", "greater"), plot = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations.}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{theta.est}{estimate of the parameter theta}
  \item{alternative}{indicates the alternative hypothesis and must be one of \code{"two.sided"} (default), \code{"less"}, or \code{"greater"}.}
  \item{plot}{Logical; if TRUE, the cdf plot is provided. }
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\details{The Kolmogorov-Smirnov test is a goodness-of-fit technique based on the maximum distance between the empirical and theoretical cdfs.}
\value{The function \code{ks.gp.weibull()} carries out the KS test for the generalized power Weibull(GPW)}

\references{
Nikulin, M. and Haghighi, F. (2006).
\emph{A Chi-squared test for the generalized power Weibull family for the head-and-neck cancer censored data},
Journal of Mathematical Sciences, Vol. 133(3), 1333-1341.

Pham, H. and Lai, C.D. (2007).
\emph{On recent generalizations of the Weibull distribution},
 IEEE Trans. on Reliability, Vol. 56(3), 454-458.
}

\seealso{
\code{\link{pp.gp.weibull}} for \code{PP} plot and \code{\link{qq.gp.weibull}} for \code{QQ} plot
}
\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(repairtimes)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 1.566093, theta.est = 0.355321

ks.gp.weibull(repairtimes, 1.566093, 0.355321, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}


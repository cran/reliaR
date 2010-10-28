\name{ks.flex.weibull}
\alias{ks.flex.weibull}

\title{Test of Kolmogorov-Smirnov for the flexible Weibull(FW) distribution}

\description{
The function \code{ks.flex.weibull()} gives the values for the KS test assuming a flexible Weibull(FW) with shape
  parameter alpha and scale parameter beta. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}

\usage{
ks.flex.weibull(x, alpha.est, beta.est, 
    alternative = c("less", "two.sided", "greater"), plot = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations.}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{alternative}{indicates the alternative hypothesis and must be one of \code{"two.sided"} (default), \code{"less"}, or \code{"greater"}.}
  \item{plot}{Logical; if TRUE, the cdf plot is provided. }
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\details{The Kolmogorov-Smirnov test is a goodness-of-fit technique based on the maximum distance between the empirical and theoretical cdfs.}
\value{The function \code{ks.flex.weibull()} carries out the KS test for the flexible Weibull(FW)}


\references{
Bebbington, M., Lai, C.D. and Zitikis, R. (2007).
\emph{A flexible Weibull extension},
Reliability Engineering and System Safety, 92, 719-726.
}

\seealso{
\code{\link{pp.flex.weibull}} for \code{PP} plot and \code{\link{qq.flex.weibull}} for \code{QQ} plot
}

\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(repairtimes)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.07077507, beta.est = 1.13181535

ks.flex.weibull(repairtimes, 0.07077507, 1.13181535, 
    alternative = "two.sided", plot = TRUE)
}

\keyword{htest}


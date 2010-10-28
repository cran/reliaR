\name{ks.expo.weibull}
\alias{ks.expo.weibull}

\title{Test of Kolmogorov-Smirnov for the Exponentiated Weibull(EW) distribution}

\description{
The function \code{ks.expo.weibull()} gives the values for the KS test assuming a Exponentiated Weibull(EW) with shape
  parameter alpha and scale parameter theta. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.expo.weibull(x, alpha.est, theta.est, 
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
\value{The function \code{ks.expo.weibull()} carries out the KS test for the Exponentiated Weibull(EW)}

\references{
Mudholkar, G.S. and Srivastava, D.K. (1993).
\emph{Exponentiated Weibull family for analyzing bathtub failure-rate data},
IEEE Transactions on Reliability, 42(2), 299-302.

Murthy, D.N.P., Xie, M. and Jiang, R. (2003).
\emph{Weibull Models}, Wiley, New York.

Nassar, M.M., and Eissa, F. H. (2003).
\emph{On the Exponentiated Weibull Distribution},
Communications in Statistics - Theory and Methods, 32(7), 1317-1336.
}

\seealso{
\code{\link{pp.expo.weibull}} for \code{PP} plot and \code{\link{qq.expo.weibull}} for \code{QQ} plot
}
\examples{
## Load data sets
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(stress)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est =1.026465, theta.est = 7.824943

ks.expo.weibull(stress, 1.026465, 7.824943, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

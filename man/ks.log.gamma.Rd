\name{ks.log.gamma}
\alias{ks.log.gamma}

\title{Test of Kolmogorov-Smirnov for the log-gamma(LG) distribution}
\description{
The function \code{ks.log.gamma()} gives the values for the KS test assuming a log-gamma(LG) with shape
  parameter alpha and scale parameter lambda. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.log.gamma(x, alpha.est, lambda.est, 
    alternative = c("less", "two.sided", "greater"), plot = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations.}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
  \item{alternative}{indicates the alternative hypothesis and must be one of \code{"two.sided"} (default), \code{"less"}, or \code{"greater"}.}
  \item{plot}{Logical; if TRUE, the cdf plot is provided. }
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\details{The Kolmogorov-Smirnov test is a goodness-of-fit technique based on the maximum distance between the empirical and theoretical cdfs.}
\value{The function \code{ks.log.gamma()} carries out the KS test for the log-gamma(LG)}

\references{
Klugman, S., Panjer, H. and Willmot, G. (2004).
\emph{Loss Models: From Data to Decisions}, 2nd ed., New York, Wiley.

Lawless, J. F., (2003).
\emph{Statistical Models and Methods for Lifetime Data},
2nd ed., John Wiley and Sons, New York.
}

\seealso{
\code{\link{pp.log.gamma}} for \code{PP} plot and \code{\link{qq.log.gamma}} for \code{QQ} plot
}
\examples{
## Load data sets
data(conductors)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(conductors)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 0.0088741, lambda.est = 0.6059935

ks.log.gamma(conductors, 0.0088741, 0.6059935, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

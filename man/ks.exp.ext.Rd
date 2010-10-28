\name{ks.exp.ext}
\alias{ks.exp.ext}

\title{Test of Kolmogorov-Smirnov for the Exponential Extension(EE) distribution}
\description{
The function \code{ks.exp.ext()} gives the values for the KS test assuming a Exponential Extension(EE) with shape
  parameter alpha and scale parameter lambda. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.exp.ext(x, alpha.est, lambda.est, 
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
\value{The function \code{ks.exp.ext()} carries out the KS test for the Exponential Extension(EE)}

\references{
Nikulin, M. and Haghighi, F. (2006).
\emph{A Chi-squared test for the generalized power Weibull family for the head-and-neck cancer censored data},
Journal of Mathematical Sciences, Vol. 133(3),  1333-1341.
}

\seealso{
\code{\link{pp.exp.ext}} for \code{PP} plot and \code{\link{qq.exp.ext}} for \code{QQ} plot
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.0126e+01, lambda.est = 1.5848e-04

ks.exp.ext(sys2, 1.0126e+01, 1.5848e-04, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

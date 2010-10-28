\name{ks.gen.exp}
\alias{ks.gen.exp}

\title{
 Test of Kolmogorov-Smirnov for the Generalized Exponential(GE) distribution
}

\description{
The function ks.gen.exp() gives the values for the KS test assuming an GE 
with shape parameter alpha and scale parameter lambda. In addition, optionally,
 this function allows one to show a comparative graph between the empirical 
 and theoretical cdfs for a specified data set.
}
\usage{
ks.gen.exp(x, alpha.est, lambda.est, 
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

\details{
The Kolmogorov-Smirnov test is a goodness-of-fit technique based on the
 maximum distance between the empirical and theoretical cdfs.
}
\value{
The function \code{ks.gen.exp()} carries out the KS test for the GE.
}

\references{
  Gupta, R. D. and Kundu, D. (2001).
  \emph{Exponentiated exponential family; an
alternative to gamma and Weibull distributions.}
  Biometrical Journal, 43(1), 117 - 130.

  Gupta, R. D. and Kundu, D. (1999).
  \emph{Generalized exponential distributions.}
  Australian and New Zealand Journal of Statistics, 41(2), 173 - 188.
}

\seealso{
\code{\link{pp.gen.exp}} for \code{PP} plot and \code{\link{qq.gen.exp}} for \code{QQ} plot
}
\examples{
## Load data sets
data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 5.28321139, lambda.est = 0.03229609
ks.gen.exp(bearings, 5.28321139, 0.03229609, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}


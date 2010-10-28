\name{ks.inv.genexp}
\alias{ks.inv.genexp}

\title{Test of Kolmogorov-Smirnov for the Inverse Generalized Exponential(IGE) distribution}
\description{
The function \code{ks.inv.genexp()} gives the values for the KS test assuming a Inverse Generalized Exponential(IGE) with shape
  parameter alpha and scale parameter lambda. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.inv.genexp(x, alpha.est, lambda.est, 
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
\value{The function \code{ks.inv.genexp()} carries out the KS test for the Inverse Generalized Exponential(IGE)}

\references{
Gupta, R. D. and Kundu, D. (2001).
\emph{Exponentiated exponential family; an alternative to gamma and Weibull distributions},
 Biometrical Journal, 43(1), 117-130.

Gupta, R.D. and Kundu, D. (2007).
\emph{Generalized exponential distribution: Existing results and some recent development},
 Journal of Statistical Planning and Inference. 137, 3537-3547.
}

\seealso{
\code{\link{pp.inv.genexp}} for \code{PP} plot and \code{\link{qq.inv.genexp}} for \code{QQ} plot
}
\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(repairtimes)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.097807, lambda.est = 1.206889

ks.inv.genexp(repairtimes, 1.097807, 1.206889, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

\name{ks.moew}
\alias{ks.moew}

\title{Test of Kolmogorov-Smirnov for the Marshall-Olkin Extended Exponential(MOEW) distribution}
\description{
The function \code{ks.moew()} gives the values for the KS test assuming a MOEW with shape
  parameter alpha and tilt parameter lambda. In addition, optionally, this function 
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.moew(x, alpha.est, lambda.est, 
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
\value{The function \code{ks.moew()} carries out the KS test for the MOEW}
\references{
  Marshall, A. W., Olkin, I. (1997).
  \emph{A new method for adding a parameter to a family
of distributions with application to the Weibull and Weibull families.}
  Biometrika,84(3):641-652.

  Marshall, A. W., Olkin, I. (2007).
  \emph{Life Distributions: Structure of Nonparametric,
Semiparametric, and Parametric Families.}
  Springer, New York.
}

\seealso{
\code{\link{pp.moew}} for \code{PP} plot and \code{\link{qq.moew}} for \code{QQ} plot
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.3035937,  lambda.est = 279.2177754

ks.moew(sys2, 0.3035937, 279.2177754, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}


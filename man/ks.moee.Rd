\name{ks.moee}
\alias{ks.moee}

\title{Test of Kolmogorov-Smirnov for the Marshall-Olkin Extended Exponential(MOEE) distribution}
\description{
The function \code{ks.moee()} gives the values for the KS test assuming an GE with tilt
  parameter alpha and scale parameter lambda. In addition, optionally, this function 
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.moee(x, alpha.est, lambda.est, 
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
\value{The function \code{ks.moee()} carries out the KS test for the MOEE}

\references{
  Marshall, A. W., Olkin, I. (1997).
  \emph{A new method for adding a parameter to a family
of distributions with application to the exponential and Weibull families.}
  Biometrika,84(3):641-652.

  Marshall, A. W., Olkin, I.(2007).
  \emph{Life Distributions: Structure of Nonparametric,
Semiparametric, and Parametric Families.}
  Springer, New York.
}

\seealso{
\code{\link{pp.moee}} for \code{PP} plot and \code{\link{qq.moee}} for \code{QQ} plot
}
\examples{
## Load dataset
data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 75.67982, lambda.est = 1.67576

ks.moee(stress, 75.67982, 1.67576, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}


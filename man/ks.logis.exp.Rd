\name{ks.logis.exp}
\alias{ks.logis.exp}

\title{Test of Kolmogorov-Smirnov for the Logistic-Exponential(LE) distribution}
\description{
The function \code{ks.logis.exp()} gives the values for the KS test assuming a Logistic-Exponential(LE) with shape
  parameter alpha and scale parameter lambda. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.logis.exp(x, alpha.est, lambda.est, 
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
\value{The function \code{ks.logis.exp()} carries out the KS test for the Logistic-Exponential(LE)}

\references{
Lan, Y. and Leemis, L. M. (2008).
\emph{The Logistic-Exponential Survival Distribution},
Naval Research Logistics, 55, 252-264.
}

\seealso{
\code{\link{pp.logis.exp}} for \code{PP} plot and \code{\link{qq.logis.exp}} for \code{QQ} plot
}
\examples{
## Load data sets
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 2.36754, lambda.est = 0.01059

ks.logis.exp(bearings, 2.36754, 0.01059, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

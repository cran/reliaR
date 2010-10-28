\name{ks.logis.rayleigh}
\alias{ks.logis.rayleigh}

\title{Test of Kolmogorov-Smirnov for the Logistic-Rayleigh(LR) distribution}
\description{
The function \code{ks.logis.rayleigh()} gives the values for the KS test assuming a Logistic-Rayleigh(LR) with shape
  parameter alpha and scale parameter lambda. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.logis.rayleigh(x, alpha.est, lambda.est, 
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
\value{The function \code{ks.logis.rayleigh()} carries out the KS test for the Logistic-Rayleigh(LR)}

\references{
Lan, Y. and Leemis, L. M. (2008).
\emph{The Logistic-Exponential Survival Distribution},
Naval Research Logistics, 55, 252-264.
}

\seealso{
\code{\link{pp.logis.rayleigh}} for \code{PP} plot and \code{\link{qq.logis.rayleigh}} for \code{QQ} plot
}
\examples{
## Load data sets
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.4779388, lambda.est = 0.2141343

ks.logis.rayleigh(stress, 1.4779388, 0.2141343, 
    alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

\name{ks.gompertz}
\alias{ks.gompertz}

\title{Test of Kolmogorov-Smirnov for the Gompertz distribution}
\description{
The function \code{ks.gompertz()} gives the values for the KS test assuming a Gompertz with shape
  parameter alpha and scale parameter theta. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.gompertz(x, alpha.est, theta.est, 
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
\value{The function \code{ks.gompertz()} carries out the KS test for the Gompertz}

\references{
Marshall, A. W., Olkin, I. (2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}

\seealso{
\code{\link{pp.gompertz}} for \code{PP} plot and \code{\link{qq.gompertz}} for \code{QQ} plot
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(sys2)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 0.00121307, theta.est = 0.00173329

ks.gompertz(sys2, 0.00121307, 0.00173329, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

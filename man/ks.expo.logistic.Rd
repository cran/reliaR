\name{ks.expo.logistic}
\alias{ks.expo.logistic}

\title{Test of Kolmogorov-Smirnov for the Exponentiated Logistic (EL) distribution}

\description{
The function \code{ks.expo.logistic()} gives the values for the KS test assuming a Exponentiated Logistic(EL) with shape
  parameter alpha and scale parameter beta. In addition, optionally, this function
  allows one to show a comparative graph between the empirical and theoretical cdfs for a specified data set.
}
\usage{
ks.expo.logistic(x, alpha.est, beta.est, 
    alternative = c("less", "two.sided", "greater"), plot = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations.}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{alternative}{indicates the alternative hypothesis and must be one of \code{"two.sided"} (default), \code{"less"}, or \code{"greater"}.}
  \item{plot}{Logical; if TRUE, the cdf plot is provided. }
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\details{The Kolmogorov-Smirnov test is a goodness-of-fit technique based on the maximum distance between the empirical and theoretical cdfs.}
\value{The function \code{ks.expo.logistic()} carries out the KS test for the Exponentiated Logistic(EL)}

\references{
Ali, M.M., Pal, M. and Woo, J. (2007).
\emph{Some Exponentiated Distributions},
The Korean Communications in Statistics, 14(1), 93-109.

Shirke, D.T., Kumbhar, R.R. and Kundu, D. (2005).
\emph{Tolerance intervals for exponentiated scale family of distributions},
Journal of Applied Statistics, 32, 1067-1074
}

\seealso{
\code{\link{pp.expo.logistic}} for \code{PP} plot and \code{\link{qq.expo.logistic}} for \code{QQ} plot
}
\examples{

## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(dataset2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 5.31302, beta.est = 139.04515

ks.expo.logistic(dataset2, 5.31302, 139.04515, alternative = "two.sided", plot = TRUE)
}

\keyword{htest}

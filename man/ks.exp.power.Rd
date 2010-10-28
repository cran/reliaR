\name{ks.exp.power}
\alias{ks.exp.power}

\title{
 Test of Kolmogorov-Smirnov for the Exponential Power(EP) distribution
}
\description{
The function \code{ks.exp.power()} gives the values for the KS test assuming an Exponential Power distribution 
with shape parameter alpha and scale parameter lambda. In addition, optionally,
 this function allows one to show a comparative graph between the empirical 
 and theoretical cdfs for a specified data set.
}
\usage{
ks.exp.power(x, alpha.est, lambda.est, 
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
The function \code{ks.exp.power()} carries out the KS test for the EP.
}
\references{
Smith, R.M. and  Bain, L.J. (1975). 
\emph{An exponential power life-test distribution}, Communications in Statistics - Simulation and Computation, 
Vol. 4(5), 469-481.
}

\seealso{
\code{\link{pp.exp.power}} for \code{PP} plot and \code{\link{qq.exp.power}} for \code{QQ} plot
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.905868898, lambda.est =  0.001531423

ks.exp.power(sys2, 0.905868898, 0.001531423, alternative = "two.sided", plot = TRUE) 

}

\keyword{htest}

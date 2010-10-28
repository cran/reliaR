\name{ks.loglog}
\alias{ks.loglog}

\title{
 Test of Kolmogorov-Smirnov for the Loglog distribution
}
\description{
The function \code{ks.loglog()} gives the values for the KS test assuming the Loglog 
distribution with shape parameter alpha and scale parameter lambda. In addition, optionally,
 this function allows one to show a comparative graph between the empirical 
 and theoretical cdfs for a specified data set.
}
\usage{
ks.loglog(x, alpha.est, lambda.est, 
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
The function \code{ks.loglog()} carries out the KS test for the Loglog.
}
\references{
Pham, H.(2002). 
\emph{A Vtub-Shaped Hazard Rate Function with Applications to System Safety}, International Journal of Reliability and 
Applications, Vol. 3, No. l,  pp. 1-16.

Pham, H.(2006). \emph{System Software Reliability}, Springer-Verlag.
}

\seealso{
\code{\link{pp.loglog}} for \code{PP} plot and \code{\link{qq.loglog}} for \code{QQ} plot
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.9058689 lambda.est = 1.0028228

ks.loglog(sys2, 0.9058689, 1.0028228, alternative = "two.sided", plot = TRUE)  
}

\keyword{htest}


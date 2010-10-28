\name{ks.chen}
\alias{ks.chen}

\title{
 Test of Kolmogorov-Smirnov for the Chen distribution
}
\description{
The function ks.chen() gives the values for the KS test assuming the Chen distribution 
with shape parameter beta and scale parameter lambda. In addition, optionally,
 this function allows one to show a comparative graph between the empirical 
 and theoretical cdfs for a specified data set.
}
\usage{
ks.chen(x, beta.est, lambda.est, 
    alternative = c("less", "two.sided", "greater"), plot = FALSE, ...)
 }
\arguments{
  \item{x}{vector of observations.}
  \item{beta.est}{estimate of the parameter beta}
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
The function \code{ks.chen()} carries out the KS test for the Chen.
}
\references{
Castillo, E., Hadi, A.S., Balakrishnan, N. and Sarabia, J.M.(2004). 
\emph{Extreme Value and Related Models with Applications in Engineering and Science}, John Wiley and Sons, New York.

Chen, Z.(2000).  
\emph{A new two-parameter lifetime distribution with bathtub shape or increasing failure rate function}, Statistics and 
Probability Letters, 49, 155-161.

Pham, H. (2003).
\emph{Handbook of Reliability Engineering}, Springer-Verlag.
}

\seealso{
\code{\link{pp.chen}} for \code{PP} plot and \code{\link{qq.chen}} for \code{QQ} plot
}
\examples{
## Load data sets
data(sys2)
## Estimates of beta & lambda using 'maxLik' package
## beta.est = 0.262282404, lambda.est = 0.007282371

ks.chen(sys2, 0.262282404, 0.007282371, alternative = "two.sided", plot = TRUE)  
}

\keyword{htest}


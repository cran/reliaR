\name{pp.gp.weibull}
\alias{pp.gp.weibull}

\title{
Probability versus Probability (PP) plot for the generalized power Weibull(GPW) distribution
}
\description{
The function \code{pp.gp.weibull()} produces a PP plot for the generalized power Weibull(GPW) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.gp.weibull(x, alpha.est, theta.est, main = " ", line = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{theta.est}{estimate of the parameter theta}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{pp.gp.weibull()} carries out a PP plot for the generalized power Weibull(GPW).
}

\references{
Nikulin, M. and Haghighi, F.(2006).
\emph{A Chi-squared test for the generalized power Weibull family for the head-and-neck cancer censored data},
Journal of Mathematical Sciences, Vol. 133(3), 1333-1341.

Pham, H. and Lai, C.D.(2007).
\emph{On recent generalizations of the Weibull distribution},
 IEEE Trans. on Reliability, Vol. 56(3), 454-458.
}

\seealso{
\code{\link{qq.gp.weibull}} for \code{QQ} plot  and \code{\link{ks.gp.weibull}} function;
}
\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(repairtimes)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 1.566093, theta.est = 0.355321

pp.gp.weibull(repairtimes, 1.566093, 0.355321, main = " ", line = TRUE)
}

\keyword{hplot}

\name{qq.gp.weibull}
\alias{qq.gp.weibull}

\title{
Quantile versus quantile (QQ) plot for the generalized power Weibull(GPW) distribution
}
\description{
The function \code{qq.gp.weibull()} produces a QQ plot for the generalized power Weibull(GPW) based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.gp.weibull(x, alpha.est, theta.est, main = " ", line.qt = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{theta.est}{estimate of the parameter theta}
  \item{main}{the title for the plot}
    \item{line.qt}{logical; if TRUE, a line going by the first and third quartile is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{qq.gp.weibull()} carries out a QQ plot for the generalized power Weibull(GPW).
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
\code{\link{pp.gp.weibull}} for \code{PP} plot  and \code{\link{ks.gp.weibull}} function;
}
\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(repairtimes)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 1.566093, theta.est = 0.355321

qq.gp.weibull(repairtimes, 1.566093, 0.355321, main = " ", line.qt = FALSE)
}

\keyword{hplot}

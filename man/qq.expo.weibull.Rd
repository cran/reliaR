\name{qq.expo.weibull}
\alias{qq.expo.weibull}

\title{
Quantile versus quantile (QQ) plot for the Exponentiated Weibull(EW) distribution
}
\description{
The function \code{qq.expo.weibull()} produces a QQ plot for the Exponentiated Weibull(EW) based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.expo.weibull(x, alpha.est, theta.est, main = " ", line.qt = FALSE, ...)
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
The function \code{qq.expo.weibull()} carries out a QQ plot for the Exponentiated Weibull(EW).
}

\references{
Mudholkar, G.S. and Srivastava, D.K. (1993).
\emph{Exponentiated Weibull family for analyzing bathtub failure-rate data},
IEEE Transactions on Reliability, 42(2), 299-302.

Murthy, D.N.P., Xie, M. and Jiang, R. (2003).
\emph{Weibull Models}, Wiley, New York.

Nassar, M.M., and Eissa, F. H. (2003).
\emph{On the Exponentiated Weibull Distribution},
Communications in Statistics - Theory and Methods, 32(7), 1317-1336.
}

\seealso{
\code{\link{pp.expo.weibull}} for \code{PP} plot  and \code{\link{ks.expo.weibull}} function;
}
\examples{
## Load data sets
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(stress)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est =1.026465, theta.est = 7.824943

qq.expo.weibull(stress, 1.026465, 7.824943, main = " ", line.qt = FALSE)
}

\keyword{hplot}

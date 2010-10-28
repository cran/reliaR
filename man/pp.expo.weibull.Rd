\name{pp.expo.weibull}
\alias{pp.expo.weibull}

\title{
Probability versus Probability (PP) plot for the Exponentiated Weibull(EW) distribution
}
\description{
The function \code{pp.expo.weibull()} produces a PP plot for the Exponentiated Weibull(EW) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.expo.weibull(x, alpha.est, theta.est, main = " ", line = FALSE, ...)
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
The function \code{pp.expo.weibull()} carries out a PP plot for the Exponentiated Weibull(EW).
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
\code{\link{qq.expo.weibull}} for \code{QQ} plot  and \code{\link{ks.expo.weibull}} function;
}
\examples{
## Load data sets
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(stress)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est =1.026465, theta.est = 7.824943

pp.expo.weibull(stress, 1.026465, 7.824943, main = " ", line = TRUE)
}

\keyword{hplot}

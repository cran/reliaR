\name{qq.flex.weibull}
\alias{qq.flex.weibull}

\title{
Quantile versus quantile (QQ) plot for the flexible Weibull(FW) distribution
}
\description{
The function \code{qq.flex.weibull()} produces a QQ plot for the flexible Weibull(FW) based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.flex.weibull(x, alpha.est, beta.est, main = " ", line.qt = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{main}{the title for the plot}
    \item{line.qt}{logical; if TRUE, a line going by the first and third quartile is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{qq.flex.weibull()} carries out a QQ plot for the flexible Weibull(FW).
}


\references{
Bebbington, M., Lai, C.D. and Zitikis, R. (2007).
\emph{A flexible Weibull extension},
Reliability Engineering and System Safety, 92, 719-726.
}

\seealso{
\code{\link{pp.flex.weibull}} for \code{PP} plot  and \code{\link{ks.flex.weibull}} function;
}
\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(repairtimes)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.07077507, beta.est = 1.13181535

qq.flex.weibull(repairtimes, 0.07077507, 1.13181535, main = " ", line.qt = FALSE)
}

\keyword{hplot}

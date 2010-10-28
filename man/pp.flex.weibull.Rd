\name{pp.flex.weibull}
\alias{pp.flex.weibull}

\title{
Probability versus Probability (PP) plot for the flexible Weibull(FW) distribution
}
\description{
The function \code{pp.flex.weibull()} produces a PP plot for the flexible Weibull(FW) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.flex.weibull(x, alpha.est, beta.est, main = " ", line = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{pp.flex.weibull()} carries out a PP plot for the flexible Weibull(FW).
}


\references{
Bebbington, M., Lai, C.D. and Zitikis, R. (2007).
\emph{A flexible Weibull extension},
Reliability Engineering and System Safety, 92, 719-726.
}


\seealso{
\code{\link{qq.flex.weibull}} for \code{QQ} plot  and \code{\link{ks.flex.weibull}} function;
}
\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(repairtimes)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 0.07077507, beta.est = 1.13181535

pp.flex.weibull(repairtimes, 0.07077507, 1.13181535, main = " ", line = TRUE)
}

\keyword{hplot}

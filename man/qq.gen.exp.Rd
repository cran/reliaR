\name{qq.gen.exp}
\alias{qq.gen.exp}

\title{
Quantile versus quantile (QQ) plot for the Generalized Exponential(GE) distribution
}
\description{
The function \code{qq.gen.exp()} produces a QQ plot for the GE based on their MLE or
 any other estimator. Also, a line going through the first and the third quartile can be sketched.
}
\usage{
qq.gen.exp(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
  \item{main}{the title for the plot}
    \item{line.qt}{logical; if TRUE, a line going by the first and third quartile is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{qq.gen.exp()} carries out a QQ plot for the GE
}
\references{
  Gupta, R. D. and Kundu, D. (2001).
  \emph{Exponentiated exponential family; an
alternative to gamma and Weibull distributions.}
  Biometrical Journal, 43(1), 117 - 130.

  Gupta, R. D. and Kundu, D. (1999).
  \emph{Generalized exponential distributions.}
  Australian and New Zealand Journal of Statistics, 41(2), 173 - 188.
}

\seealso{
\code{\link{pp.gen.exp}} for \code{PP} plot  and \code{\link{ks.gen.exp}} function
}
\examples{
## Load data
data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 5.28321139, lambda.est = 0.03229609

qq.gen.exp(bearings, 5.28321139, 0.03229609, line.qt = FALSE)
}

\keyword{hplot}


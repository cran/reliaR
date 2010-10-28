\name{qq.exp.ext}
\alias{qq.exp.ext}

\title{
Quantile versus quantile (QQ) plot for the Exponential Extension(EE) distribution
}
\description{
The function \code{qq.exp.ext()} produces a QQ plot for the ExpExt based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.exp.ext(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)
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
The function \code{qq.exp.ext()} carries out a QQ plot for the Exponetial Extension.
}

\references{
Nikulin, M. and Haghighi, F.(2006).
\emph{A Chi-squared test for the generalized power Weibull family for the head-and-neck cancer censored data},
Journal of Mathematical Sciences, Vol. 133(3),  1333-1341.
}

\seealso{
\code{\link{pp.exp.ext}} for \code{PP} plot  and \code{\link{ks.exp.ext}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.0126e+01, lambda.est = 1.5848e-04

qq.exp.ext(sys2, 1.0126e+01, 1.5848e-04, main = " ", line.qt = FALSE)
}

\keyword{hplot}

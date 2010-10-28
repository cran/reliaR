\name{pp.exp.ext}
\alias{pp.exp.ext}

\title{
Probability versus Probability (PP) plot for the Exponential Extension(EE) distribution
}
\description{
The function \code{pp.exp.ext()} produces a PP plot for the Exponential Extension(EE) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.exp.ext(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{pp.exp.ext()} carries out a PP plot for the Exponential Extension(EE).
}

\references{
Nikulin, M. and Haghighi, F.(2006).
\emph{A Chi-squared test for the generalized power Weibull family for the head-and-neck cancer censored data},
Journal of Mathematical Sciences, Vol. 133(3),  1333-1341.
}

\seealso{
\code{\link{qq.exp.ext}} for \code{QQ} plot  and \code{\link{ks.exp.ext}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.0126e+01, lambda.est = 1.5848e-04

pp.exp.ext(sys2, 1.0126e+01, 1.5848e-04, main = " ", line = TRUE)
}

\keyword{hplot}

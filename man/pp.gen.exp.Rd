\name{pp.gen.exp}
\alias{pp.gen.exp}

\title{
Probability versus Probability (PP) plot for the Generalized Exponential(GE) distribution
}
\description{
The function \code{pp.gen.exp()} produces a PP plot for the GE based on their MLE 
or any other estimator. Also, a reference line can be sketched.
}
\usage{
pp.gen.exp(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
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
The function \code{pp.gen.exp()} carries out a PP plot for the GE.
}

\seealso{
\code{\link{qq.gen.exp}} for \code{QQ} plot  and \code{\link{ks.gen.exp}} functions;
}
\examples{
## Load dataset
data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 5.28321139, lambda.est = 0.03229609

pp.gen.exp(bearings, 5.28321139, 0.03229609, line = TRUE)
}

\keyword{hplot}


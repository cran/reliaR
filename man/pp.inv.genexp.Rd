\name{pp.inv.genexp}
\alias{pp.inv.genexp}

\title{
Probability versus Probability (PP) plot for the Inverse Generalized Exponential(IGE) distribution
}
\description{
The function \code{pp.inv.genexp()} produces a PP plot for the Inverse Generalized Exponential(IGE) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.inv.genexp(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
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
The function \code{pp.inv.genexp()} carries out a PP plot for the Inverse Generalized Exponential(IGE).
}

\references{
Gupta, R. D. and Kundu, D. (2001).
\emph{Exponentiated exponential family; an alternative to gamma and Weibull distributions},
 Biometrical Journal, 43(1), 117-130.

Gupta, R.D. and Kundu, D., (2007).
\emph{Generalized exponential distribution: Existing results and some recent development},
 Journal of Statistical Planning and Inference. 137, 3537-3547.
}

\seealso{
\code{\link{qq.inv.genexp}} for \code{QQ} plot  and \code{\link{ks.inv.genexp}} function;
}
\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(repairtimes)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.097807, lambda.est = 1.206889

pp.inv.genexp(repairtimes, 1.097807, 1.206889, main = " ", line = TRUE)
}

\keyword{hplot}

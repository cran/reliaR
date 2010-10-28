\name{qq.inv.genexp}
\alias{qq.inv.genexp}

\title{
Quantile versus quantile (QQ) plot for the Inverse Generalized Exponential(IGE) distribution
}
\description{
The function \code{qq.inv.genexp()} produces a QQ plot for the Inverse Generalized Exponential(IGE) based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.inv.genexp(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)
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
The function \code{qq.inv.genexp()} carries out a QQ plot for the Exponetial Extension.
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
\code{\link{pp.inv.genexp}} for \code{PP} plot  and \code{\link{ks.inv.genexp}} function;
}
\examples{
## Load data sets
data(repairtimes)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(repairtimes)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.097807, lambda.est = 1.206889

qq.inv.genexp(repairtimes, 1.097807, 1.206889, main = " ", line.qt = FALSE)
}


\keyword{hplot}

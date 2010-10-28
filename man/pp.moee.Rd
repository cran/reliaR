\name{pp.moee}
\alias{pp.moee}

\title{
Probability versus Probability (PP) plot for the Marshall-Olkin Extended Exponential(MOEE) distribution
}
\description{
The function \code{pp.moee()} produces a PP plot for the MOEE based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.moee(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
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
The function \code{pp.moee()} carries out a PP plot for the MOEE.
}
\references{
  Marshall, A. W., Olkin, I. (1997).
  \emph{A new method for adding a parameter to a family
of distributions with application to the exponential and Weibull families.}
  Biometrika,84(3):641-652.

  Marshall, A. W., Olkin, I.(2007).
  \emph{Life Distributions: Structure of Nonparametric,
Semiparametric, and Parametric Families.}
  Springer, New York.
}

\seealso{
\code{\link{qq.moee}} for \code{QQ} plot  and \code{\link{ks.moee}} functions
}
\examples{
## Load dataset
data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 75.67982, lambda.est = 1.67576

pp.moee(stress, 75.67982, 1.67576, main = '', line = TRUE)
}

\keyword{hplot}


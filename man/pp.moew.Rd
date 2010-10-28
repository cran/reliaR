\name{pp.moew}
\alias{pp.moew}

\title{
Probability versus Probability (PP) plot for the Marshall-Olkin Extended Weibull(MOEW) distribution
}
\description{
The function \code{pp.moew( )} produces a PP plot for the MOEW based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.moew(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
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
The function \code{pp.moew( )} carries out a PP plot for the MOEW.
}
\references{
  Marshall, A. W., Olkin, I. (1997).
  \emph{A new method for adding a parameter to a family
of distributions with application to the Weibull and Weibull families.}
  Biometrika,84(3):641-652.

  Marshall, A. W., Olkin, I.(2007).
  \emph{Life Distributions: Structure of Nonparametric,
Semiparametric, and Parametric Families.}
  Springer, New York.
}

\seealso{
\code{\link{qq.moew}} for \code{QQ} plot  and \code{\link{ks.moew}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.3035937,  lambda.est = 279.2177754

pp.moew(sys2, 0.3035937, 279.2177754, main = " ", line = TRUE)
}

\keyword{hplot}


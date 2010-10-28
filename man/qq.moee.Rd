\name{qq.moee}
\alias{qq.moee}

\title{
Quantile versus quantile (QQ) plot for the Marshall-Olkin Extended Exponential(MOEE) distribution
}
\description{
The function \code{qq.moee()} produces a QQ plot for the MOEE based on their MLE or 
any other estimate. Also, a line going through the first and the third 
quartile can be sketched.
}
\usage{
qq.moee(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)
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
The function \code{qq.moee()} carries out a QQ plot for the MOEE.
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
\code{\link{pp.moee}} for \code{PP} plot  and \code{\link{ks.moee}} function
}
\examples{
## Load dataset
data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 75.67982, lambda.est = 1.67576

qq.moee(stress, 75.67982, 1.67576, main = '',line.qt = FALSE)
}

\keyword{hplot}

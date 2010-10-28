\name{qq.moew}
\alias{qq.moew}

\title{
Quantile versus quantile (QQ) plot for the Marshall-Olkin Extended Weibull(MOEW) distribution
}
\description{
The function \code{qq.moew( )} produces a QQ plot for the MOEW based on their MLE or 
any other estimate. Also, a line going through the first and the third 
quartile can be sketched.
}
\usage{qq.moew(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
  \item{main}{the title for the plot}
    \item{line.qt}{logical; if TRUE, a line going by the first and third quartile is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function qq.moew( ) carries out a QQ plot for the MOEW.
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
\code{\link{pp.moew}} for \code{PP} plot  and \code{\link{ks.moew}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.3035937,  lambda.est = 279.2177754

qq.moew(sys2, 0.3035937, 279.2177754, main = " ", line.qt = FALSE)

}

\keyword{hplot}


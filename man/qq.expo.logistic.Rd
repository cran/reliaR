\name{qq.expo.logistic}
\alias{qq.expo.logistic}

\title{
Quantile versus quantile (QQ) plot for the Exponentiated Logistic(EL) distribution
}
\description{
The function \code{qq.expo.logistic()} produces a QQ plot for the Exponentiated Logistic(EL) based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.expo.logistic(x, alpha.est, beta.est, main = " ", line.qt = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{main}{the title for the plot}
    \item{line.qt}{logical; if TRUE, a line going by the first and third quartile is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{qq.expo.logistic()} carries out a QQ plot for the Exponentiated Logistic(EL).
}

\references{
Ali, M.M., Pal, M. and Woo, J. (2007).
\emph{Some Exponentiated Distributions},
The Korean Communications in Statistics, 14(1), 93-109.

Shirke, D.T., Kumbhar, R.R. and Kundu, D.(2005).
\emph{Tolerance intervals for exponentiated scale family of distributions},
Journal of Applied Statistics, 32, 1067-1074
}

\seealso{
\code{\link{pp.expo.logistic}} for \code{PP} plot  and \code{\link{ks.expo.logistic}} function;
}
\examples{
## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(dataset2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 5.31302, beta.est = 139.04515

qq.expo.logistic(dataset2, 5.31302, 139.04515, main = " ", line.qt = FALSE)
}

\keyword{hplot}

\name{pp.expo.logistic}
\alias{pp.expo.logistic}

\title{
Probability versus Probability (PP) plot for the Exponentiated Logistic(EL) distribution
}
\description{
The function \code{pp.expo.logistic()} produces a PP plot for the Exponentiated Logistic(EL) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.expo.logistic(x, alpha.est, beta.est, main = " ", line = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}


\value{
The function \code{pp.expo.logistic()} carries out a PP plot for the Exponentiated Logistic(EL).
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
\code{\link{qq.expo.logistic}} for \code{QQ} plot  and \code{\link{ks.expo.logistic}} function;
}
\examples{
## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(dataset2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 5.31302, beta.est = 139.04515

pp.expo.logistic(dataset2, 5.31302, 139.04515, main = " ", line = TRUE)
}

\keyword{hplot}

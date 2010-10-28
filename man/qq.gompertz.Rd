\name{qq.gompertz}
\alias{qq.gompertz}

\title{
Quantile versus quantile (QQ) plot for the Gompertz distribution
}
\description{
The function \code{qq.gompertz()} produces a QQ plot for the Gompertz based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.gompertz(x, alpha.est, theta.est, main = " ", line.qt = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{theta.est}{estimate of the parameter theta}
  \item{main}{the title for the plot}
    \item{line.qt}{logical; if TRUE, a line going by the first and third quartile is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{qq.gompertz()} carries out a QQ plot for the Gompertz.
}

\references{
Marshall, A. W., Olkin, I.(2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}


\seealso{
\code{\link{pp.gompertz}} for \code{PP} plot  and \code{\link{ks.gompertz}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(sys2)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 0.00121307, theta.est = 0.00173329

qq.gompertz(sys2, 0.00121307, 0.00173329, main = " ", line.qt = FALSE)
}

\keyword{hplot}

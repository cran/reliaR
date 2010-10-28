\name{pp.gompertz}
\alias{pp.gompertz}

\title{
Probability versus Probability (PP) plot for the Gompertz distribution
}
\description{
The function \code{pp.gompertz()} produces a PP plot for the Gompertz based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.gompertz(x, alpha.est, theta.est, main = " ", line = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{theta.est}{estimate of the parameter theta}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{pp.gompertz()} carries out a PP plot for the Gompertz.
}

\references{
Marshall, A. W., Olkin, I.(2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}

\seealso{
\code{\link{qq.gompertz}} for \code{QQ} plot  and \code{\link{ks.gompertz}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & theta for the data(sys2)
## Estimates of alpha & theta using 'maxLik' package
## alpha.est = 0.00121307, theta.est = 0.00173329

pp.gompertz(sys2, 0.00121307, 0.00173329, main = " ", line = TRUE)
}

\keyword{hplot}

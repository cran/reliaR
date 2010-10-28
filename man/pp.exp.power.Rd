\name{pp.exp.power}
\alias{pp.exp.power}

\title{
Probability versus Probability (PP) plot for the Exponential Power distribution
}
\description{
The function \code{pp.exp.power()} produces a PP plot for the Exponential Power distribution based on their MLE 
or any other estimator. Also, a reference line can be sketched.
}
\usage{
pp.exp.power(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
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
The function \code{pp.exp.power()} carries out a PP plot for the Exponential Power distribution.
}
\references{
Smith, R.M. and  Bain, L.J.(1975). 
\emph{An exponential power life-test distribution}, Communications in Statistics - Simulation and Computation, 
Vol.4(5), 469 - 481
}

\seealso{
\code{\link{qq.exp.power}} for \code{QQ} plot  and \code{\link{ks.exp.power}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.905868898, lambda.est =  0.001531423

pp.exp.power(sys2, 0.905868898, 0.001531423, main = '', line = TRUE)
}

\keyword{hplot}


\name{qq.exp.power}
\alias{qq.exp.power}

\title{Quantile versus quantile (QQ) plot for the Exponential Power distribution}
\description{
The function \code{qq.exp.power()} produces a QQ plot for the Exponential Power distribution based on their MLE or
 any other estimator. Also, a line going through the first and the third quartile can be sketched.
}
\usage{
qq.exp.power(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)
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
The function \code{qq.exp.power()} carries out a QQ plot for the Exponential Power distribution.
}
\references{
Castillo, E., Hadi, A.S., Balakrishnan, N. and Sarabia, J.M.(2004). 
\emph{Extreme Value and Related Models with Applications in Engineering and Science}, John Wiley and Sons, New York.

Smith, R.M. and  Bain, L.J.(1975). 
\emph{An exponential power life-test distribution}, Communications in Statistics - Simulation and Computation, 
Vol.4(5), 469 - 481
}

\seealso{
\code{\link{pp.exp.power}} for \code{PP} plot  and \code{\link{ks.exp.power}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.905868898, lambda.est =  0.001531423

qq.exp.power(sys2, 0.905868898, 0.001531423, line.qt = FALSE)
}

\keyword{hplot}


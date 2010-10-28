\name{qq.log.gamma}
\alias{qq.log.gamma}

\title{
Quantile versus quantile (QQ) plot for the log-gamma(LG) distribution
}
\description{
The function \code{qq.log.gamma()} produces a QQ plot for the ExpExt based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.log.gamma(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)
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
The function \code{qq.log.gamma()} carries out a QQ plot for the log-gamma(LG).
}

\references{
Klugman, S., Panjer, H. and Willmot, G. (2004).
\emph{Loss Models: From Data to Decisions}, 2nd ed., New York, Wiley.

Lawless, J. F., (2003).
\emph{Statistical Models and Methods for Lifetime Data},
2nd ed., John Wiley and Sons, New York.
}

\seealso{
\code{\link{pp.log.gamma}} for \code{PP} plot  and \code{\link{ks.log.gamma}} function;
}
\examples{
## Load data sets
data(conductors)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(conductors)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 0.0088741, lambda.est = 0.6059935

qq.log.gamma(conductors, 0.0088741, 0.6059935, main = " ", line.qt = FALSE)
}

\keyword{hplot}

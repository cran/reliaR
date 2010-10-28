\name{pp.log.gamma}
\alias{pp.log.gamma}

\title{
Probability versus Probability (PP) plot for the log-gamma(LG) distribution
}
\description{
The function \code{pp.log.gamma()} produces a PP plot for the log-gamma(LG) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.log.gamma(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
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
The function \code{pp.log.gamma()} carries out a PP plot for the log-gamma(LG).
}

\references{
Klugman, S., Panjer, H. and Willmot, G. (2004).
\emph{Loss Models: From Data to Decisions}, 2nd ed., New York, Wiley.

Lawless, J. F., (2003).
\emph{Statistical Models and Methods for Lifetime Data},
2nd ed., John Wiley and Sons, New York.
}

\seealso{
\code{\link{qq.log.gamma}} for \code{QQ} plot  and \code{\link{ks.log.gamma}} function;
}
\examples{
## Load data sets
data(conductors)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(conductors)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 0.0088741, lambda.est = 0.6059935

pp.log.gamma(conductors, 0.0088741, 0.6059935, main = " ", line = TRUE)
}

\keyword{hplot}

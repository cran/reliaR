\name{pp.logis.exp}
\alias{pp.logis.exp}

\title{
Probability versus Probability (PP) plot for the Logistic-Exponential(LE) distribution
}
\description{
The function \code{pp.logis.exp()} produces a PP plot for the Logistic-Exponential(LE) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.logis.exp(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
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
The function \code{pp.logis.exp()} carries out a PP plot for the Logistic-Exponential(LE).
}

\references{
Lan, Y. and Leemis, L. M. (2008).
\emph{The Logistic-Exponential Survival Distribution},
Naval Research Logistics, 55, 252-264.
}

\seealso{
\code{\link{qq.logis.exp}} for \code{QQ} plot  and \code{\link{ks.logis.exp}} function;
}
\examples{
## Load data sets
data(bearings)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 2.36754, lambda.est = 0.01059

pp.logis.exp(bearings, 2.36754, 0.01059, main = " ", line = TRUE)
}

\keyword{hplot}

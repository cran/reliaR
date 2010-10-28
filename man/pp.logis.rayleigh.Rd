\name{pp.logis.rayleigh}
\alias{pp.logis.rayleigh}

\title{
Probability versus Probability (PP) plot for the Logistic-Rayleigh(LR) distribution
}
\description{
The function \code{pp.logis.rayleigh()} produces a PP plot for the Logistic-Rayleigh(LR) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.logis.rayleigh(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
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
The function \code{pp.logis.rayleigh()} carries out a PP plot for the Logistic-Rayleigh(LR).
}

\references{
Lan, Y. and Leemis, L. M. (2008).
\emph{The Logistic-Exponential Survival Distribution},
Naval Research Logistics, 55, 252-264.
}

\seealso{
\code{\link{qq.logis.rayleigh}} for \code{QQ} plot  and \code{\link{ks.logis.rayleigh}} function;
}
\examples{
## Load data sets
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.4779388, lambda.est = 0.2141343

pp.logis.rayleigh(stress, 1.4779388, 0.2141343, main = " ", line = TRUE)
}

\keyword{hplot}

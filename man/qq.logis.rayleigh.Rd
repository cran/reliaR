\name{qq.logis.rayleigh}
\alias{qq.logis.rayleigh}

\title{
Quantile versus quantile (QQ) plot for the Logistic-Rayleigh(LR) distribution
}
\description{
The function \code{qq.logis.rayleigh()} produces a QQ plot for the ExpExt based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.logis.rayleigh(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)
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
The function \code{qq.logis.rayleigh()} carries out a QQ plot for the Exponetial Extension.
}

\references{
Lan, Y. and Leemis, L. M. (2008).
\emph{The Logistic-Exponential Survival Distribution},
Naval Research Logistics, 55, 252-264.
}

\seealso{
\code{\link{pp.logis.rayleigh}} for \code{PP} plot  and \code{\link{ks.logis.rayleigh}} function;
}
\examples{
## Load data sets
data(stress)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 1.4779388, lambda.est = 0.2141343

qq.logis.rayleigh(stress, 1.4779388, 0.2141343, main = " ", line.qt = FALSE)
}

\keyword{hplot}

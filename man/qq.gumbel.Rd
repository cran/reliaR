\name{qq.gumbel}
\alias{qq.gumbel}

\title{
Quantile versus quantile (QQ) plot for the Gumbel distribution
}
\description{
The function \code{qq.gumbel()} produces a QQ plot for the Gumbel based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.gumbel(x, mu.est, sigma.est, main = " ", line.qt = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{mu.est}{estimate of the parameter mu}
  \item{sigma.est}{estimate of the parameter sigma}
  \item{main}{the title for the plot}
    \item{line.qt}{logical; if TRUE, a line going by the first and third quartile is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{qq.gumbel()} carries out a QQ plot for the Gumbel.
}

\references{
Marshall, A. W., Olkin, I.(2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}

\seealso{
\code{\link{pp.gumbel}} for \code{PP} plot  and \code{\link{ks.gumbel}} function;
}
\examples{
## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of mu & sigma for the data(dataset2)
## Estimates of mu & sigma using 'maxLik' package
## mu.est = 212.157, sigma.est = 151.768

qq.gumbel(dataset2, 212.157, 151.768, main = " ", line.qt = FALSE)
}

\keyword{hplot}

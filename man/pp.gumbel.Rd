\name{pp.gumbel}
\alias{pp.gumbel}

\title{
Probability versus Probability (PP) plot for the Gumbel distribution
}
\description{
The function \code{pp.gumbel()} produces a PP plot for the Gumbel based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.gumbel(x, mu.est, sigma.est, main = " ", line = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{mu.est}{estimate of the parameter mu}
  \item{sigma.est}{estimate of the parameter sigma}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{pp.gumbel()} carries out a PP plot for the Gumbel.
}

\references{
Marshall, A. W., Olkin, I.(2007).
\emph{Life Distributions: Structure of Nonparametric, Semiparametric, and Parametric Families},
 Springer, New York.
}

\seealso{
\code{\link{qq.gumbel}} for \code{QQ} plot  and \code{\link{ks.gumbel}} function;
}
\examples{
## Load data sets
data(dataset2)
## Maximum Likelihood(ML) Estimates of mu & sigma for the data(dataset2)
## Estimates of mu & sigma using 'maxLik' package
## mu.est = 212.157, sigma.est = 151.768

pp.gumbel(dataset2, 212.157, 151.768, main = " ", line = TRUE)
}

\keyword{hplot}

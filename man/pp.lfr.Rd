\name{pp.lfr}
\alias{pp.lfr}

\title{
Probability versus Probability (PP) plot for the linear failure rate(LFR) distribution
}
\description{
The function \code{pp.lfr()} produces a PP plot for the linear failure rate(LFR) based on their MLE or any other estimate. Also, a reference line can be sketched.
}
\usage{
pp.lfr(x, alpha.est, beta.est, main = " ", line = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{pp.lfr()} carries out a PP plot for the linear failure rate(LFR).
}

\references{
Bain, L.J. (1974).
\emph{Analysis for the Linear Failure-Rate Life-Testing Distribution},
Technometrics, 16(4), 551 - 559.

Lawless, J.F.(2003).
\emph{Statistical Models and Methods for Lifetime Data},
John Wiley and Sons, New York.

Sen, A. and Bhattacharya, G.K.(1995).
\emph{Inference procedure for the linear failure rate mode},
Journal of Statistical Planning and Inference, 46, 59-76.
}

\seealso{
\code{\link{qq.lfr}} for \code{QQ} plot  and \code{\link{ks.lfr}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 1.77773e-03,  beta.est = 2.77764e-06

pp.lfr(sys2, 1.777673e-03, 2.777640e-06, main = " ", line = TRUE)
}

\keyword{hplot}

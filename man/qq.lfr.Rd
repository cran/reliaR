\name{qq.lfr}
\alias{qq.lfr}

\title{
Quantile versus quantile (QQ) plot for the linear failure rate(LFR) distribution
}
\description{
The function \code{qq.lfr()} produces a QQ plot for the linear failure rate(LFR) based on their MLE or
any other estimate. Also, a line going through the first and the third
quartile can be sketched.
}
\usage{
qq.lfr(x, alpha.est, beta.est, main = " ", line.qt = FALSE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
  \item{main}{the title for the plot}
    \item{line.qt}{logical; if TRUE, a line going by the first and third quartile is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{qq.lfr()} carries out a QQ plot for the linear failure rate(LFR).
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
\code{\link{pp.lfr}} for \code{PP} plot  and \code{\link{ks.lfr}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 1.77773e-03,  beta.est = 2.77764e-06

qq.lfr(sys2, 1.777673e-03, 2.777640e-06, main = " ", line.qt = FALSE)
}

\keyword{hplot}

\name{qq.loglog}
\alias{qq.loglog}

\title{
 Quantile versus quantile (QQ) plot for the Loglog distribution
}
\description{
The function \code{qq.loglog()} produces a QQ plot for the Loglog based on their MLE or
 any other estimator. Also, a line going through the first and the third quartile can be sketched.
}
\usage{
qq.loglog(x, alpha.est, lambda.est, main = " ", line.qt = FALSE, ...)
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
The function \code{qq.loglog()} carries out a QQ plot for the Loglog
}

\references{
Pham, H.(2002). 
\emph{A Vtub-Shaped Hazard Rate Function with Applications to System Safety}, International Journal of Reliability and 
Applications. ,Vol. 3, No. l,  pp. 1-16.

Pham, H.(2006). 
\emph{System Software Reliability}, Springer-Verlag.
}

\seealso{
\code{\link{pp.loglog}} for \code{PP} plot  and \code{\link{ks.loglog}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.9058689 lambda.est = 1.0028228

qq.loglog(sys2, 0.9058689, 1.0028228, line.qt = FALSE)
}

\keyword{hplot}


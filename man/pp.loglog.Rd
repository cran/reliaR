\name{pp.loglog}
\alias{pp.loglog}

\title{
Probability versus Probability (PP) plot for the Loglog distribution
}
\description{
The function \code{pp.loglog()} produces a PP plot for the Loglog based on their MLE 
or any other estimator. Also, a reference line can be sketched.
}
\usage{
pp.loglog(x, alpha.est, lambda.est, main = " ", line = FALSE, ...)
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
The function \code{pp.loglog()} carries out a PP plot for the Loglog.
}

\references{
Pham, H.(2002). 
\emph{A Vtub-Shaped Hazard Rate Function with Applications to System Safety}, International Journal of Reliability and 
Applications. ,Vol. 3, No. l,  pp. 1-16.

Pham, H.(2006). 
\emph{System Software Reliability}, Springer-Verlag.
}

\seealso{
\code{\link{qq.loglog}} for \code{QQ} plot  and \code{\link{ks.loglog}} function;
}

\examples{
## Load data sets.
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & lambda for the data(sys2)
## alpha.est = 0.9058689 lambda.est = 1.0028228

pp.loglog(sys2, 0.9058689, 1.0028228, line = TRUE)
}

\keyword{hplot}

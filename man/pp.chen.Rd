\name{pp.chen}
\alias{pp.chen}

\title{
Probability versus Probability (PP) plot for the Chen distribution
}
\description{
The function \code{pp.chen()} produces a PP plot for the Chen based on their MLE 
or any other estimator. Also, a reference line can be sketched.
}
\usage{
pp.chen(x, beta.est, lambda.est, main = " ", line = TRUE, ...)
}

\arguments{
  \item{x}{vector of observations}
  \item{beta.est}{estimate of the parameter beta}
  \item{lambda.est}{estimate of the parameter lambda}
  \item{main}{the title for the plot.}
    \item{line}{logical; if TRUE, a 45 degree line is sketched.}
  \item{...}{additional arguments to be passed to the underlying plot function.}
}

\value{
The function \code{pp.chen()} carries out a PP plot for the Chen.
}
\references{
Castillo, E., Hadi, A.S., Balakrishnan, N. and Sarabia, J.M.(2004). 
\emph{Extreme Value and Related Models with Applications in Engineering and Science}, John Wiley and Sons, New York.

Chen, Z.(2000).  
\emph{A new two-parameter lifetime distribution with bathtub shape or increasing failure rate function}, Statistics and 
Probability Letters, 49, 155-161.

Pham, H.(2006). 
\emph{System Software Reliability}, Springer-Verlag.
}

\seealso{
\code{\link{qq.chen}} for \code{QQ} plot  and \code{\link{ks.chen}} function;
}
\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of beta & lambda for the data(sys2)
## beta.est = 0.262282404, lambda.est = 0.007282371

pp.chen(sys2, 0.262282404, 0.007282371, line = TRUE)
} 

\keyword{hplot}

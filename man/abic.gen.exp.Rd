\name{abic.gen.exp}

\alias{abic.gen.exp}

\title{Akaike information criterion (AIC) and Bayesian information
 criterion (BIC) for a sample from Generalized Exponential distribution
}

\description{
The function \code{abic.gen.exp()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
 assuming an Generalized Exponential distribution with parameters alpha and 
 lambda. The function is based on the invariance property of the MLE.
}

\usage{abic.gen.exp(x, alpha.est, lambda.est)}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
}

\value{
The function \code{abic.gen.exp()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values.
}

\references{
Claeskens, G.  and Hjort, N. L. (2008).
\emph{Model Selection and Model Averaging}, Cambridge University Press, London.
}

\seealso{
\code{\link{pp.gen.exp}} for \code{PP} plot and \code{\link{qq.gen.exp}} for \code{QQ} plot
}

\examples{
## Load data set
data(bearings)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 5.28321139, lambda.est = 0.03229609
abic.gen.exp(bearings, 5.28321139, 0.03229609)
}

\keyword{models}


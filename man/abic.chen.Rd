\name{abic.chen}

\alias{abic.chen}

\title{Akaike information criterion (AIC) and Bayesian information
 criterion (BIC) for a sample from Chen distribution
}

\description{
The function \code{abic.chen()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
 assuming Chen distribution with parameters beta and 
 lambda. The function is based on the invariance property of the MLE.
}

\usage{abic.chen(x, beta.est, lambda.est)}

\arguments{
  \item{x}{vector of observations}
  \item{beta.est}{estimate of the parameter beta}
  \item{lambda.est}{estimate of the parameter lambda}
}

\value{
The function \code{abic.chen()} gives the \code{loglikelihood}, \code{AIC} and \code{BIC} values.
}

\references{
Akaike, H. (1978). 
\emph{A new look at the Bayes procedure}, Biometrika, 65, 53-59.

Claeskens, G.  and Hjort, N. L. (2008).
\emph{Model Selection and Model Averaging}, Cambridge University Press, London.

Konishi., S. and Kitagawa, G.(2008). 
\emph{Information Criteria and Statistical Modeling}, Springer Science+Business Media, LLC.

Schwarz, S. (1978). 
\emph{Estimating the dimension of the model}, Annals of Statistics, 6, 461-464.

Spiegelhalter, D. J., Best, N. G., Carlin, B. P. and van der Linde, A. (2002). 
\emph{Bayesian measures of complexity and fit}, Journal of the Royal Statistical Society Series B 64, 1-34.
}

\seealso{
\code{\link{pp.chen}} for \code{PP} plot and \code{\link{qq.chen}} for \code{QQ} plot
}

\examples{
## Load data sets

data(sys2)
## Maximum Likelihood(ML) Estimates of beta & lambda for the data(sys2)
## beta.est = 0.262282404, lambda.est = 0.007282371

## Values of AIC, BIC and LogLik for the data(sys2) 
abic.chen(sys2, 0.262282404, 0.007282371)
}

\keyword{models}


\name{abic.lfr}

\alias{abic.lfr}

\title{Akaike information criterion (AIC) and Bayesian information criterion (BIC)
for linear failure rate(LFR) distribution}

\description{
The function \code{abic.lfr()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
assuming an linear failure rate(LFR) distribution with parameters alpha and beta.}

\usage{abic.lfr(x, alpha.est, beta.est)}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{beta.est}{estimate of the parameter beta}
}

\value{
The function \code{abic.lfr()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values.
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
\code{\link{pp.lfr}} for \code{PP} plot and \code{\link{qq.lfr}} for \code{QQ} plot
}

\examples{
## Load data sets
data(sys2)
## Maximum Likelihood(ML) Estimates of alpha & beta for the data(sys2)
## Estimates of alpha & beta using 'maxLik' package
## alpha.est = 1.77773e-03,  beta.est = 2.77764e-06

## Values of AIC, BIC and LogLik for the data(sys2)
abic.lfr(sys2, 1.777673e-03, 2.777640e-06)
}

\keyword{models}

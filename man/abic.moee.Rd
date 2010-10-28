\name{abic.moee}
\alias{abic.moee}

\title{Akaike information criterion (AIC) and Bayesian information criterion (BIC)
for the Marshall-Olkin Extended Exponential(MOEE) distribution}

\description{
The function \code{abic.moee()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values
assuming an MOEE distribution with parameters alpha and lambda.}

\usage{abic.moee(x, alpha.est, lambda.est)}

\arguments{
  \item{x}{vector of observations}
  \item{alpha.est}{estimate of the parameter alpha}
  \item{lambda.est}{estimate of the parameter lambda}
}

\value{
The function \code{abic.moee()} gives the  \code{loglikelihood}, \code{AIC} and \code{BIC} values.
}

\references{
Konishi., S. and Kitagawa, G.(2008).
\emph{Information Criteria and Statistical Modeling}, Springer Science+Business Media, LLC.
}

\seealso{
\code{\link{pp.moee}} for \code{PP} plot and \code{\link{qq.moee}} for \code{QQ} plot
}

\examples{
## Load data set
data(stress)
## Estimates of alpha & lambda using 'maxLik' package
## alpha.est = 75.67982, lambda.est = 1.67576
abic.moee(stress, 75.67982, 1.67576)
}

\keyword{models}


\name{Chensurvival}

\alias{Chensurvival}
\alias{crf.chen}
\alias{hchen}
\alias{hra.chen}
\alias{schen}

\title{Survival related functions for the Chen distribution}

\description{
  Conditional reliability function (crf), hazard function, hazard rate average (HRA) and survival function for the Chen 
  distribution with shape parameter \code{beta} and scale parameter \code{lambda}.}
  
\usage{
crf.chen(x, t = 0, beta, lambda)
hchen(x, beta, lambda)
hra.chen(x, beta, lambda)
schen(x, beta, lambda)
}

\arguments{
    \item{x}{vector of quantiles.}
    \item{beta}{shape  parameter.}
    \item{lambda}{scale parameter.}
    \item{t}{age component.}
}

\value{
    \code{crf.chen} gives the conditional reliability function (crf),
    \code{hchen} gives the hazard function,
    \code{hra.chen} gives the hazard rate average (HRA) function, and
    \code{schen} gives the survival function for the Chen distribution.
}

\seealso{\code{\link{dchen}} for other Chen distribution related functions}


\references{
Chen, Z.(2000).  
\emph{A new two-parameter lifetime distribution with bathtub shape or increasing failure rate function}, Statistics and 
Probability Letters, 49, 155-161.

Pham, H. (2003).
\emph{Handbook of Reliability Engineering}, Springer-Verlag.
}

\examples{
## Maximum Likelihood(ML) Estimates of beta & lambda 
## beta.est = 0.262282404, lambda.est = 0.007282371
## Load data sets
data(sys2)

## Reliability indicators:

## Reliability function
schen(sys2, 0.262282404, 0.007282371)

## Hazard function 
hchen(sys2, 0.262282404, 0.007282371)

## hazard rate average(hra)
hra.chen(sys2, 0.262282404, 0.007282371)

## Conditional reliability function (age component=0)
crf.chen(sys2, 0.00, 0.262282404, 0.007282371)

## Conditional reliability function (age component=3.0)
crf.chen(sys2, 3.0, 0.262282404, 0.007282371)
}

\keyword{survival}





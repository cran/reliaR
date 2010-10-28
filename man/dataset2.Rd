\name{dataset2}
\alias{dataset2}
\docType{data}

\title{Controller Dataset}

\description{
Several data sets related to life test are available in the reliaR package, which have been taken from the literature.
}

\usage{data(dataset2)}

\format{
A vector containing 111 observations.
}

\details{
The data is obtained from Lyu(1996) and is given in chapter 11 as DATASET2.
The data set contains 36 months of defect-discovery times for a release of
Controller Software consisting of about 500,000 lines of code installed on over 100,000 controllers.
}

\references{
Lyu, M. R. (1996).
\emph{Handbook of Software Reliability Engineering},
IEEE Computer Society Press, \url{http://www.cse.cuhk.edu.hk/~lyu/book/reliability/}
}

\examples{
## Load data sets
data(dataset2)
## Histogram for dataset2
hist(dataset2)
}

\keyword{datasets}

\name{sys2}
\alias{sys2}
\docType{data}

\title{Software Reliability Dataset}

\description{
Several data sets related to life test are available in the reliaR package, which have been taken from the literature.
}

\usage{data(sys2)}

\format{
A vector containing 86 observations.
}

\details{
The data is obtained from DACS Software Reliability Dataset, Lyu (1996). The data
represents the time-between-failures (time unit in miliseconds) of a software.
The data given here is transformed from time-between-failures to failure times.

}

\references{
Lyu, M. R. (1996).
\emph{Handbook of Software Reliability Engineering},
IEEE Computer Society Press, \url{http://www.cse.cuhk.edu.hk/~lyu/book/reliability/}
}

\examples{
## Load data sets
data(sys2)
## Histogram for sys2
hist(sys2)
}

\keyword{datasets}

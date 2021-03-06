\name{parenv}
\alias{parenv}
\title{Get parent/ancestor environment}
\usage{
  parenv(env = parent.frame(), n = 1)
}
\arguments{
  \item{env}{an environment}

  \item{n}{number of parents to go up}
}
\description{
  Get parent/ancestor environment
}
\examples{
adder <- function(x) function(y) x + y
add2 <- adder(2)
parenv(add2)
}


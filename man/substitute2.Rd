\name{substitute2}
\alias{substitute2}
\title{A version of substitute that evaluates its first argument.}
\usage{
  substitute2(x, env)
}
\arguments{
  \item{x}{a quoted call}

  \item{env}{an environment, or something that behaves like
  an environment (like a list or data frame), or a
  reference to an environment (like a positive integer or
  name, see \code{\link{as.environment}} for more details)}
}
\description{
  This version of substitute is needed because
  \code{substitute} does not evaluate it's first argument,
  and it's often useful to be able to modify a quoted call.
}
\examples{
x <- quote(a + b)
substitute(x, list(a = 1, b = 2))
substitute2(x, list(a = 1, b = 2))
}


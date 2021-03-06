\name{track_copy}
\alias{track_copy}
\title{Track if an object is copied}
\usage{
  track_copy(var, env = parent.frame(), quiet = FALSE)
}
\arguments{
  \item{var}{variable name (unquoted)}

  \item{env}{environment name in which to track changes}

  \item{quiet}{if \code{FALSE}, prints a message on change;
  if \code{FALSE} only the return value of the function is
  used}
}
\value{
  a zero-arg function, that when called returns a boolean
  indicating if the object has changed since the last time
  this function was called
}
\description{
  The title is somewhat misleading: rather than checking if
  an object is modified, this really checks to see if a
  name points to the same object.
}
\examples{
a <- 1:5
track_a <- track_copy(a)
track_a()
a[3] <- 3L
track_a()
a[3] <- 3
track_a()
}


% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Instance_status.R
\name{describe_instances}
\alias{describe_instances}
\alias{instance_status}
\title{EC2 Instance Status}
\usage{
describe_instances(instance, filter, n, token, ...)

instance_status(instance, filter, runningonly, n, token, ...)
}
\arguments{
\item{instance}{A character string containing an EC2 instance ID or an object of class \dQuote{ec2_instance}. Or, actions can be taken on multiple instances in one call by passing a character vector of instance IDs, or a list of objects of class \dQuote{ec2_instance}.}

\item{filter}{\dots}

\item{n}{\dots}

\item{token}{A (max 64-character) string containing a unique user-defined token. This can be used to ensure idempotency of requests in the event of a user-side failure. See \url{http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html} for details.}

\item{...}{Additional arguments passed to \code{\link{ec2HTTP}}.}

\item{runningonly}{\dots}
}
\value{
For \code{describe_instances}, a list containing several lists of elements, including one or more \dQuote{instancesSet} elements that lists various instances. For \code{instance_status}, a possibly empty list.
}
\description{
Describe or check status of an EC2 instance
}
\examples{
\dontrun{
i <- run_instances()
describe_instances(i[[1]])
instance_status(i[[1]])

stop_instances(i[[1]])
terminate_instances(i[[1]])
}
}
\references{
\url{http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html}
\url{http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstanceStatus.html}
}
\keyword{instances}


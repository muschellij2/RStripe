% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/disputes.R
\name{stripe_close_dispute}
\alias{stripe_close_dispute}
\title{Close a dispute.}
\usage{
stripe_close_dispute(charge_id, api_key = NULL)
}
\arguments{
\item{charge_id}{The identifier of the charge with the dispute.}

\item{api_key}{Your Stripe API Key}
}
\value{
Returns a dispute data frame if closed.
}
\description{
Close a dispute which you don't have evidence to.
}

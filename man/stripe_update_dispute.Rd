% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/disputes.R
\name{stripe_update_dispute}
\alias{stripe_update_dispute}
\title{Update a dispute.}
\usage{
stripe_update_dispute(charge_id, args, api_key = NULL)
}
\arguments{
\item{charge_id}{The identifier of the charge with the dispute.}

\item{args}{An optional list that can contain
\describe{
   \item{evidence}{\emph{optional} Evidence towards resolving dispute.}
   \item{metadata}{\emph{optional} key/value for storing dispute
   information.}
}}

\item{api_key}{Your Stripe API Key}
}
\value{
Returns a dispute data frame if valid.
}
\description{
Update a dispute and add evidence to it.
}
\examples{
\dontrun{
stripe_update_dispute(
api_key = "sk_test_BQokikJOvBiI2HlWgH4olfQ2",
"ch_14TLyd2eZvKYlo2CdryxwrF8", args = list(evidence="Here's evidence showing
this charge is legitimate.", metadata=list(exhibitA="This happened")))
}

}

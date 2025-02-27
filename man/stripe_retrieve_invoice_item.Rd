% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/invoice_items.R
\name{stripe_retrieve_invoice_item}
\alias{stripe_retrieve_invoice_item}
\title{Retrieve an Invoice Item.}
\usage{
stripe_retrieve_invoice_item(item_id, api_key = NULL)
}
\arguments{
\item{item_id}{The invoice item id you want to retrieve}

\item{api_key}{Your Stripe API Key}
}
\value{
A data frame with the invoice item if successful.
}
\description{
Retrieve a specific invoice item's info using it's id.
}

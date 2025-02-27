# --------------------------------------------------
# Cards
# --------------------------------------------------

#' Add a credit card to Stripe.
#'
#' Add a new credit card to a customer. Set it as default.
#'
#' @param api_key Your Stripe API Key
#'
#' @param customer_id The id for the customer you want the credit card
#' added to.
#'
#' @param args A required list of either a token,
#' or a card dictionary.
#' \href{https://stripe.com/docs/api#create_card}{more info here}
#'
#' @examples
#' \dontrun{
#' stripe_create_card(
#' api_key = "sk_test_BQokikJOvBiI2HlWgH4olfQ2", "cus_4cb7HNjNSqqV2H",
#' list(source="tok_14SsjM2eZvKYlo2CCtdx2AvO"))
#' }
#'
#' \dontrun{
#' stripe_create_card(
#' api_key = "sk_test_BQokikJOvBiI2HlWgH4olfQ2", "cus_4cb7HNjNSqqV2H",
#' list(card=list(number="4242424242424242", exp_month="03",
#' exp_year="2018")))
#' }
#'
#' @return A data frame with card information
#'
#' @export
#'
stripe_create_card <- function(customer_id, args, api_key = NULL) {
    args <- .card(args)
    link <- paste0("https://api.stripe.com/v1/customers/",
                   customer_id, "/cards")
    api_key = check_stripe_secret_key(api_key = api_key)
    .post(api_key, link, args)
}

#' Retrieve a card from a customer
#'
#' Retrieve the information about a credit card.  Can retrieve last 4 digits.
#'
#' @param api_key Your Stripe API Key
#'
#' @param card_id The id for the card you want to retrieve
#'
#' @param customer_id The id for the customer where the card is
#' added to.
#'
#' @return A data frame with card information
#'
#' @export
#'
stripe_retrieve_card <- function(card_id, customer_id, api_key = NULL) {
     link <- paste0("https://api.stripe.com/v1/customers/",
                              customer_id, "/cards/", card_id)
     api_key = check_stripe_secret_key(api_key = api_key)
     .get(api_key, link)
}


#' Update a credit card on Stripe.
#'
#' Update infomration about the billing address for a credit card as well
#' as other fields.
#'
#' @param api_key Your Stripe API Key
#'
#' @param customer_id The id for the customer you want the credit card
#' added to.
#'
#' @param card_id The id for the card you want to update
#'
#' @param args A list that can contain the following
#' \describe{
#'    \item{address_city}{\emph{optional}}
#'    \item{address_country}{\emph{optional}}
#'    \item{address_line1}{\emph{optional}}
#'    \item{address_line2}{\emph{optional}}
#'    \item{address_state}{\emph{optional}}
#'    \item{address_zip}{\emph{optional}}
#'    \item{exp_month}{\emph{optional}}
#'    \item{exp_year}{\emph{optional}}
#'    \item{name}{\emph{optional}}
#' }
#'
#' @examples
#' \dontrun{
#' stripe_update_card(
#' api_key = "sk_test_BQokikJOvBiI2HlWgH4olfQ2", "cus_4cb7HNjNSqqV2H",
#' "card_14TLyd2eZvKYloc2C9PXnfFmi", list(exp_year="04"))
#' }
#'
#' @return A data frame with card information
#'
#' @export
#'
stripe_update_card <- function(customer_id, card_id, args, api_key = NULL) {
    link <- paste0("https://api.stripe.com/v1/customers/",
                   customer_id, "/cards/", card_id)
    api_key = check_stripe_secret_key(api_key = api_key)
    .post(api_key, link, args)
}

#' Delete a credit card on Stripe.
#'
#' Delete a credit card off a customer's account.
#'
#' @param api_key Your Stripe API Key
#'
#' @param customer_id The id for the customer where the card is.
#'
#' @param card_id The id for the card you want to delete
#'
#' @return A data frame with card information
#'
#' @export
#'
stripe_delete_card <- function(customer_id, card_id, api_key = NULL) {
    link <- paste0("https://api.stripe.com/v1/customers/",
                   customer_id, "/cards/", card_id)
    api_key = check_stripe_secret_key(api_key = api_key)
    .delete(api_key, link)
}

#' List credit card on customers.
#'
#' List all the credit cards linked to a customer.
#'
#' @param api_key Your Stripe API Key
#'
#' @param customer_id The id for the customer you want to list the cards
#'
#' @param args an optional list that can contain
#' \describe{
#'    \item{ending_before}{\emph{optional:} An object id which will show
#'    objects before}
#'    \item{limit}{\emph{optional:} A number 1 to 100 to limit the items.
#'     Default is 10}
#'    \item{starting_after}{\emph{optional:} An object id which will show
#'    objects starting here}
#' }
#'
#' @return A data frame with card information
#'
#' @export
#'
stripe_list_cards <- function(customer_id, args=NULL, api_key = NULL) {
    args <- .convert_to_url(args)
    link <- paste0("https://api.stripe.com/v1/customers/",
                              customer_id, "/cards", args)
    api_key = check_stripe_secret_key(api_key = api_key)
    .get(api_key, link)
}

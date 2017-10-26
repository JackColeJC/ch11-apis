### Exercise 5 ###
library(jsonlite)
library(dplyr)
library(httr)

# Read in your api-key.R file (that you'll create). Store your api-key in a variable in that file.
# Write a function that allows you to specify a movie, that does the following:
source('api-key.R')

GetReview <- function(movie) {
  
  # Construct a search query using YOUR api key
  # The base URL is https://api.nytimes.com/svc/movies/v2/reviews/search.json
  # Your parameters should include a "query" and an "api_key"
  # Note: the HTTR library will take care of spaces in the arguments
  # See the interactive console for more detail:https://developer.nytimes.com/movie_reviews_v2.json#/Console/GET/reviews/search.json
  url <- 'https://api.nytimes.com/svc/movies/v2/reviews/search.json'
  query.params <- list(query = 'movie', api_key = api.key)
  response <- GET(url, query = query.params)
  body <- content(response, "text")
  
  # Request data using your search query
  parsed.data <- fromJSON(body)
  
  # What type of variable does this return?
  # not data frame
  is.data.frame(parsed.data)
  
  # Flatten the data stored in the `$results` key of the data returned to you
  flattened.data <- flatten(parsed.data$results)
  
  # From the most recent review, store the headline, short summary, and link to full article each in their own variables
  

  # Return an list of the three pieces of information from above
  
}

# Test that your function works with a movie of your choice


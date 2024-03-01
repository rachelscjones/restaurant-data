class PagesController < ApplicationController
  def home
  end

# TODO
# Make a call on the API
# Optional: first, check if the postcode is valid (https://github.com/threedaymonk/uk_postcode)

  require "json"
  require "open-uri"
  require "active_support/hash_with_indifferent_access"

  def restaurant
    @postcode = params[:postcode]
    url = "https://uk.api.just-eat.io/discovery/uk/restaurants/enriched/bypostcode/#{@postcode}"
    @restaurants = JSON.parse(URI.open("#{url}").read).dig('restaurants')
  end
end

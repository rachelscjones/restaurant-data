class PagesController < ApplicationController
  def home
  end

  require "json"
  require "open-uri"

  def restaurant
    @postcode = params[:postcode]
    joinedpostcode = @postcode.split(" ").join
    url = "https://uk.api.just-eat.io/discovery/uk/restaurants/enriched/bypostcode/#{joinedpostcode}"
    @restaurants = JSON.parse(URI.open("#{url}").read).dig('restaurants')
  end
end


# TODO
# Optional: first, check if the postcode is valid (https://github.com/threedaymonk/uk_postcode)

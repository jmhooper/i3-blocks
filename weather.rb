#!/bin/ruby

require "net/https"
require "json"

LOCATION = "baton rouge, la"
QUERY = "https://query.yahooapis.com/v1/public/yql?q=select * from weather.forecast where woeid in (select woeid from geo.places(1) where text='#{LOCATION}')&format=json"

uri = URI(QUERY)
response = Net::HTTP.get(uri)

response = JSON.parse(response)
conditions = response["query"]["results"]["channel"]["item"]["condition"]

puts "#{conditions["text"]} #{conditions["temp"]}°"
puts "#{conditions["temp"]}°"

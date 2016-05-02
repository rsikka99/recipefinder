require 'pp'

require 'httparty'

class Recipe
	include HTTParty
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri  "http://#{hostport}/api"
	default_params key: key_value
	format :json
	
pp key_value
pp hostport

	def self.for (searchTerm)
		get("/search", query: {q: searchTerm})["recipes"]
	end
end

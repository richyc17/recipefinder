require 'httparty' #Only for debug testing
require 'pp'


class Recipe_Test
	include HTTParty

	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
  	default_params fields: "count,recipes", key: key_value
  	format :json

	def self.for term
		get("/search", query: {q: term})["recipes"]
	end
end

PP.pp Recipe_Test.for 'chocolate'
#PP.pp Recipe_Test.for 'bibbitybob'

#puts ENV['FOOD2FORK_KEY']
#puts ENV['FOOD2FORK_SERVER_AND_PORT']
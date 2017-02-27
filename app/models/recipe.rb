class Recipe
# gmail 010407
# FOOD2FORK_KEY = a218dcdde4ac0e9b80ee585cca2707a1
# FOOD2FORK_SERVER_AND_PORT = 'www.food2fork.com'

include HTTParty
# include httparty
  
  key_value = ENV['FOOD2FORK_KEY'] || 'b3f751ff7bbd8c08df7849dee61cc3ae'
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
  # default_params fields: "count,recipes", key: key_value
  default_params fields: "count,recipes", key: key_value
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
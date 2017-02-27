require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'capybara/rails' 

RSpec.configure do |config|
  config.include Capybara::DSL
end
ENV['RACK_ENV'] ||= "development"

require 'sinatra/base'
require_relative './models/air_bnb_addresses'

class MakersBnB < Sinatra::Base
  get '/' do
    @addresses = Addresses.all
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

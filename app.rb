require 'sinatra/base'
require_relative './models/air_bnb_addresses'

ENV['RACK_ENV'] = 'air_bnb_addresses_development'

class MakersBnB < Sinatra::Base
  get '/' do
    @addresses = Addresses.all
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

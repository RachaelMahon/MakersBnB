require 'data_mapper'
require 'dm-postgres-adapter'


class Addresses
  include DataMapper::Resource

  property :id,       Serial
  property :address,  String
  property :email,    String
end

DataMapper.setup(:default, "postgres://localhost/air_bnb_addresses_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!

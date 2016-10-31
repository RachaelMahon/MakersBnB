require 'data_mapper'
require 'dm-postgres-adapter'

class Addresses
  include DataMapper::Resource

  property :id,       Serial
  property :address,  String
  property :email,    String
end

DataMapper.setup(:default, "postgres://localhost/#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!

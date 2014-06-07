require 'data_mapper'
require 'dm-sqlite-adapter'
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

class User
  include DataMapper::Resource  
  property :id, Serial
  property :username, String, length: 128
  property :name, String
  property :password, BCryptHash
<<<<<<< HEAD

  belongs_to :game
end

class Game
	include DataMapper::Resource
	property :id, Serial
	property :name, String
	property :winner, String

	has n, :users
=======
  property :online, Boolean
>>>>>>> 4e187ef136fc30f86696e6a2f4b75bc21202014f
end

DataMapper.finalize
DataMapper.auto_upgrade!
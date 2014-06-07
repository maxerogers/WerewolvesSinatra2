require 'rubygems'
require 'bundler'
require 'sinatra'
require './model.rb'
require './controller.rb'


before do 
	response.headers["Access-Control-Allow-Origin"] = "*"
<<<<<<< HEAD
	response.headers["Access-Control-Allow-Methods"] = "GET, POST, PUT, DELETE, OPTIONS"
end
=======
	response.headers["Access-Control-Allow-Methods"] = "GET, POST, PUT, DELETE, OPTIONS"	
end

>>>>>>> 4e187ef136fc30f86696e6a2f4b75bc21202014f

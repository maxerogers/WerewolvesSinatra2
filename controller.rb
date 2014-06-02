require "sinatra/jsonp"
get '/' do
  "Hello World"
end

put '/new_user' do 

end

get '/test_json' do
	jsonp User.all
end
29942
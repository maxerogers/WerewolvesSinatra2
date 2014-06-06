require "sinatra/jsonp"
get '/' do
  "Hello World"
end

get '/new_user' do 
	logger.info params.inspect
	u = User.create(username: params[:email], password: params[:password])
	jsonp u.to_json
end

get '/test_json' do
	jsonp User.all
end

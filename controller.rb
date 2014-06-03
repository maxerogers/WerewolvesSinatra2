require "sinatra/jsonp"
get '/' do
  "Hello World"
end

get '/login_user' do
	logger.info params.inspect
	u = User.last(:username => params[:email])
	return jsonp ["No Email Found"] if u.nil?
	return jsonp ["Bad Password"] if u.password != params[:password]
	jsonp u.to_json
end

get '/new_user' do
	logger.info params.inspect
	u = User.last(username: params[:email])
	if u.nil?
		u = User.create(username: params[:email], password: params[:password])
	else
		return jsonp ["Email already registred"]
	end
	jsonp u.to_json
end
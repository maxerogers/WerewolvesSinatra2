require "sinatra/jsonp"
get '/' do
  "Hello World"
end

<<<<<<< HEAD
post '/' do
  logger.info params.inspect
  "HOWDY"
end
=======
get '/online_users' do 
	jsonp User.all(online: true).to_json
end	
>>>>>>> 4e187ef136fc30f86696e6a2f4b75bc21202014f

get '/login_user' do
	logger.info params.inspect
	u = User.last(:username => params[:email])
	return jsonp ["No Email Found"] if u.nil?
	return jsonp ["Bad Password"] if u.password != params[:password]
	u.online = true
	u.save
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
	u.online = true
	u.save
	jsonp u.to_json
end

<<<<<<< HEAD
get "/games" do
	jsonp Game.all.to_json
end

get "/game" do
	logger.info params.inspect
	logger.info "ADSF"
	g = Game.last(name: params[:params])
	jsonp g.to_json
end

post "/game" do
	logger.info params.inspect
	jsonp ["HI"]
end

delete "/game" do
	logger.info params.inspect
	Game.last(name: params[:name]).destroy
	jsonp ["Successful Delete"]
end
=======
post '/sign_out' do 
	logger.info params.inspect
end
>>>>>>> 4e187ef136fc30f86696e6a2f4b75bc21202014f

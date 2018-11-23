
require_relative "model.rb"

get '/login' do
 erb :login
end
post '/login' do
	email  = params["email"]
	pwd= params["pwd"]
	
        
	if User.find_by_email(email) 
 	
	 if pwd == User.find_by_email(email).password
	 redirect '/home'
	 end
     	end
end
  
get '/home' do
erb :home
end


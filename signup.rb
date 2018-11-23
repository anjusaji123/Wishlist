
require_relative "model.rb"

get '/' do
	
	erb :register
end

post '/' do
	
	name = params["name"]
	email  = params["email"]
	pwd= params["password"]
	pno= params["pno"]

	User.create(:name => name, :email =>  email, :password => pwd, :pno => pno)  
	redirect '/login'


end
  

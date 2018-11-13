require "sinatra" 
require_relative "model.rb"

class  Router  <  Sinatra::Base 

end
get  '/' do

	erb  :register

end

get '/submit' do

	name= params["name"]
	email= params["email"]
	pwd= params["password"]
	
	return "#{name} #{email} #{pwd} #{pno}"
end
 
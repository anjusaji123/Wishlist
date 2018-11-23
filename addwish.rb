require_relative "model1.rb"

get '/addwish' do
	erb :addwish
end 
 
post '/addwish' do

	wname = params["wishname"]
	
	cat  = params["catname"]
	desc= params["desc"]
	

	Wish.create(:wish_name => wname, :category =>  cat, :desc => desc)  
	erb :showwish
        
	


end
  
get '/showwish' do
	erb :showwish
end





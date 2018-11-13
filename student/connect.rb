
require "mysql2"
class Connect

		
	def  connection ( host,uname,db,pwd)
		
	
		 @db=db
		 @username=uname
		 @host= host
		 @pwd=pwd
          client = Mysql2::Client.new(:host => @host ,:username => @uname, :database => @db, :password=> @pwd)
		  if(!client)
		  puts "not"
		  else
		  puts"yes"
		  end
		  
		  client
end
		
end


@dbo =  Connect.new

@conn = @dbo.connection("localhost", "Mobme", "studb","mobme123")


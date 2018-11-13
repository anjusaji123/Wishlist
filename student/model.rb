require "mysql2"
class Wishlist
	def insert name,email,pwd,pno
		
		@conn = @dbo.connection("localhost", "Mobme", "dbs_wishlist","mobme123")

			#return "#{name} #{email} #{pwd} #{pno}"
		puts "@@@@@@@@@@@@#{@conn.class}"
		statement = @conn.prepare("INSERT INTO user_details(name,email,password,phone) VALUES (?,?,?,?)")
		result1 = statement.execute(name,email,pwd,pno) 

		return "#{name} #{email} #{pwd} #{pno}"
	end
end
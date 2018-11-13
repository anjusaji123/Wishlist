
require_relative  "connect"
                                                      

puts "choose one option"

puts " 1.insert"
puts "2.show_table"
option =gets
 n= option.to_i
 
 
  if   n==1
  puts "please  enter id"
  id= gets
  id1= id.to_i
  puts "please enter name"
name=gets
  puts "please enter  address"
 add=gets
 statement = @conn.prepare("INSERT INTO student(id,name,address) VALUES (?,?,?) ")
result1 = statement.execute(id1, name,add) 

		  
  else
  result = @conn.query("SELECT * FROM  student").each do |row|
   puts  row
   end
  


  
  
  end


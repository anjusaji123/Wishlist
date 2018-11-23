require_relative "model.rb"

class CreateTableUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :email
      t.text :password
      t.text :pno

       
    end
  end
end


# run in irb


 #ob1=CreateTableUsers.new
	#ob1.change      run in irb


class CreateTableWish < ActiveRecord::Migration[5.0]
  def change
    create_table :wishes do |t|
      t.string :wish_name
      t.text  :category
      t.text :desc
     

       
    end
  end
end



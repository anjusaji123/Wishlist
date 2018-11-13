equire_relative "model.rb"

class CreateTablessignup < ActiveRecord::Migration[5.0]
  def change
    create_table :signup do |t|
      t.string :name
      t.text :email
      t.text :password
      t.text :phno

       
    end
  end
end


# run in irb

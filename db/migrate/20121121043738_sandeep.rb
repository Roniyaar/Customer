class Sandeep < ActiveRecord::Migration
  def change
    create_table :sandeep do |t|
      t.string :name
      t.integer :age
      t.integer :account_no
      t.string :account_type
      t.integer :ammount
      t.string :sex
      t.string :dob
      t.string :status
      
         
       

      t.timestamps
  end
end
end

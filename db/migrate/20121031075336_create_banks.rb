class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.integer :age
      t.integer :account_no
      t.string :account_type
      t.integer :ammount
      t.references :cstmr

      t.timestamps
    end
  end
end

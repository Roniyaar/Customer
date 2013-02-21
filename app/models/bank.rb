class Bank < ActiveRecord::Base
  attr_accessible :account_no, :account_type, :age, :ammount, :name
  belongs_to :cstmr
end

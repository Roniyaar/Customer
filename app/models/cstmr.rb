class Cstmr < ActiveRecord::Base
  attr_accessible :age, :name,:account_no, :account_type, :ammount, :sex, :dob, :status
  has_one :bank

  def self.search(search)
  	if search
  		find(:all, :conditions => ['name LIKE ?','%#{params[:search]}%'])
  	else
  		find(:all)
  	end
  end
  
end

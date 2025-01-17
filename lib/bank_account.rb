class BankAccount
  
  def initialize(name)
    @name = name 
    @balance = 1000
    @status = "open"
  end
  
  attr_reader :name
  attr_accessor :balance, :status
  
  def deposit(amount)
    @balance += amount 
  end
  
  def display_balance
    "Your balance is $#{self.balance}."
  end
  
  def valid?
    (self.status == "open" && self.balance > 0) ? true : false 
  end
  
  def close_account
    self.status = "closed"
  end

end

class BankAccount
  
  def initialize(name)
    @name = name 
    @balance = 1000
    @status = "open"
  end
  
  attr_reader :name, :balance, :status 
  
  def deposit(amount)
    @balance += amount 
  end
  
  def display_balance
    "Your balance is $#{self.balance}."
  end
  
  def valid?
    
  end

end

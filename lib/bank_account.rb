class BankAccount
  
  def initialize(name)
    @name = name 
    @balance = 1000
    @status = "open"
  end
  
  attr_reader :name, :balance, :status 

end

class Transfer
  
  def initialize(tranferer, receiver, amount)
    @sender = tranferer
    @receiver = receiver
    @status = "pending"
    @amount = amount 
  end 
  
  attr_reader :sender, :receiver, :status, :amount 
  
  def valid?
    (sender.valid? && receiver.valid?) ? true : false 
  end
  
  def execute_transaction
    if @status == "pending" && sender.balance > amount 
      sender.deposit(-amount)
      receiver.deposit(amount)
      @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end 
  end
  
end

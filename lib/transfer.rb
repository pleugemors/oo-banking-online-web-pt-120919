class Transfer
  
  def initialize(tranferer, receiver, amount)
    @sender = tranferer
    @receiver = receiver
    @status = "pending"
    @amount = amount 
    @last_transer = nil 
  end 
  
  attr_reader :sender, :receiver, :status, :amount 
  
  def valid?
    (sender.valid? && receiver.valid?) ? true : false 
  end
  
  def execute_transaction
    if @status == "pending" && sender.balance > amount && valid? 
      sender.deposit(-amount)
      receiver.deposit(amount)
      @status = "complete"
      @last_transer == self 
    else
      @status = "rejected"
      @last_transer = self
      "Transaction rejected. Please check your account balance."
    end 
  end
  
  def reverse_transfer
    #if @last_transer.status == "complete"
      sender.deposit(amount)
      receiver.deposit(-amount)
    #end
  end
  
end

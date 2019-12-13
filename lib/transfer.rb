class Transfer
  
  def initialize(tranferer, receiver, amount)
    @sender = tranferer
    @receiver = receiver
    @status = "pending"
    @amount = amount 
  end 
  
  attr_reader :sender, :receiver, :status, :amount 
  
  def valid?
    sender.
    
  end
  
end

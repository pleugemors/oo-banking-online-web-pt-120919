class Transfer
  
  def initialize(tranferer, receiver, amount)
    @sender = tranferer
    @receiver = receiver
    @status = "pending"
  end 
  
  attr_reader :sender, :receiver, :status
  
end

class Transfer
  
  def initialize(tranferer, receiver, amount)
    @sender = tranferer
    @receiver = receiver
  end 
  
  attr_reader :sender, :receiver
  
end

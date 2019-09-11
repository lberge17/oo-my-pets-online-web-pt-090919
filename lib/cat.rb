class Cat
  attr_accessor :name, :owner
  
  def initialize(name, owner)
    @name = name
    
    self.owner.name = owner
  end
  
end
class Cat
  attr_accessor :name, :owner
  
  def initialize(name, owner)
    @name = name
    owner = Owner.new
    self.owner.name = owner
  end
  
end
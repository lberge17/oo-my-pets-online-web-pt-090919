class Cat
  attr_accessor :name, :owner
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    #owner = Owner.new(name)
  end
  
end
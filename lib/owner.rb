class Owner
  attr_reader :name, :species
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
  end
  
  def say_species
    p "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
end
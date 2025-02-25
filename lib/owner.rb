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
  
  def cats
    Cat.all.select{|cat| cat.owner == self }
  end
  
  def dogs
    Dog.all.select{|dog| dog.owner == self }
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.collect do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.collect do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    dogs.collect do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    cats.collect do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end
  
  def list_pets
    p "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@all.clear
    @@count = 0
  end
  
end
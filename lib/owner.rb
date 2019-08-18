class Owner
  attr_accessor :cat, :dog, :pets 
  attr_reader :name, :species
  
  @@all = []
  @@pets = {:cats => [], :dogs => []}
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    return "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
   @@all.count
  end
  
  def self.reset_all
    self.all.clear 
  end
  
  def pets
    @@pets
  end
  
  def buy_cat(name)
    @@pets[:cats] << Cat.new(name)
  end  
end
class Owner
  attr_accessor :cats, :dogs 
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
  
  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end  
end
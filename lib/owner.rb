class Owner
 
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    return "I am a human."
  end
  
  def cats 
    @@all.collect{|c| c.cats} 
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
end
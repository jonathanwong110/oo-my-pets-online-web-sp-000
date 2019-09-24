class Owner
  # code goes here
<<<<<<< HEAD
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []

  def initialize(species)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
=======
  attr_accessor :name, :pets, :fish, :dog, :cat
  attr_reader :species
  
  @@all = []
  @@pets = {fishes: [], cats: [], dogs: []}
  
  def initialize(species)
    @species = species
    @name = name
>>>>>>> 0926ebc3a07be5cfc06ffa3d41f25827ba1d8622
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{species}."
  end
<<<<<<< HEAD
  
 
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
=======

  
  def buy_fish(fish)
    @@pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    @@pets[:dogs].each do |dog|
>>>>>>> 0926ebc3a07be5cfc06ffa3d41f25827ba1d8622
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
<<<<<<< HEAD
    @pets[:cats].each do |cat|
=======
    @@pets[:cats].each do |cat|
>>>>>>> 0926ebc3a07be5cfc06ffa3d41f25827ba1d8622
      cat.mood = 'happy'
    end
  end

  def feed_fish
<<<<<<< HEAD
    @pets[:fishes].each do |fish|
=======
    @@pets[:fishes].each do |fish|
>>>>>>> 0926ebc3a07be5cfc06ffa3d41f25827ba1d8622
      fish.mood = 'happy'
    end
  end
  
  def sell_pets
    self.pets.each { |key, value| value.each { |pet| pet.mood = "nervous" } }
    self.pets.each { |key, value| value.clear }
  end
  
  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end
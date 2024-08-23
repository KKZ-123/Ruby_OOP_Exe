class Animal
  @@total_count = 0
  @@animals = []

  attr_accessor :name, :age, :species

  def initialize(name, age, species)
    @name = name
    @age = age
    @species = species
    @@total_count += 1
  end

  def self.add_animal(animal)
    @@animals << animal
  end
  
  def self.total_count
    @@total_count
  end
  
  def self.all
    @@animals
  end

  def display
    puts "Name: #{@name}, Age: #{@age}, Species: #{@species}"
  end  
end

class MainApp
  def input_data
    animal1 = Animal.new("Moew", 2, "Dog")
    animal2 = Animal.new("Wow", 1, "cat")
    animal3 = Animal.new("Quq", 3, "bird")
    Animal.add_animal(animal1)
    Animal.add_animal(animal2)
    Animal.add_animal(animal3)
  end
  
  def run
    input_data
    puts "\nTotal Number of Animals: #{Animal.total_count}" 
    Animal.all.each(&:display)
  end  
end  

main_App = MainApp.new
main_App.run
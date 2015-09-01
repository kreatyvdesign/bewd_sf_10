require 'pry'
#---- State -----
#1. define a class
#2. determine attributes
#3. ability create instance of class (instance variables)
#4. ability to get values + set values
class Person

#attr_reader :name, :age, :home_town
#attr_writer :name, :age, :home_town
attr_accessor :name, :age, :home #attr_reader + attr_writer capabilities

  #ability to create instance of class, get and set values
  def initialize (bazooka, ak_47, watergun) #create instance of class
    @name = bazooka
    @age = ak_47
    @home = watergun
  end

  #attr_reader - only read access to a variable (creates getter methods for all atributes that you define)
  #def name #getter
    #@name
  #end

  #def age #getter
    #@age
  #end

  #def home_town #getter
    #@home_town
  #end

  #attr_writer - creates setters for all attributes
  #def name=value #setter
    #@name=value
  #end

  #def age=value #setter
    #@age=value
  #end

  #def home_town=value #setter
    #@home_town=value
  #end

  #---- Behavior -----
  #Instance methods
  # - specific behavior only an instance of the class has access to
  # - provide an instance of a class access to behavior
  #Class methods
  # - method that provides a behavior that is benefitial to the overall class
  # (cannot be accessed by instance)
  # - can be called outside the class
  #Private methods
end
binding.pry
brad = Person.new("Brad", 50, "New Orleans") #<- calls method

#build a building with attributes
#building class
#for every object there should be apartments attribute that has an array of apartments
#each apartment needs to an instance of a class of apartment, decide on attributes
#apartment should have an attribute called person, create a class called person
require 'pry'
class Building
  attr_accessor :address, :apartments, :name
  def initialize(name, address)
    @name = name
    @address = address
    @apartments = []
  end
  #def to_s #convert to string
    #"#{name} at #{address} has #{apartments.count} apartments."
  #end
  def list_units
    puts "There are #{apartments.count} in the building."
    apartments.each do |apartment|
      puts "#{apartment.name}"
      puts "#{apartment.sqft} sq ft"
      puts "#{apartment.bedrooms} bedrooms"
      puts "#{apartment.bathrooms} bathrooms"
    end
  end
end

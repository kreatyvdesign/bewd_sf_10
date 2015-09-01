#Takes in an apartment array
#If it is rented, print renter's name
#Else print "Vacant"

require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "Create new building:"
  puts "Building name:"
  name = gets.strip
  puts "Building address:"
  address = gets.strip
  building = Building.new(name, address)
  add_units_to_building(building)
end

def add_units_to_building(building)
  puts "How many units?"
  units = gets.strip.to_i #what's .strip is it same as chomp?
  units.times do
    building.apartments << create_apartment
  end
  building.list_units
end

def create_apartment
  puts "Create new apartment:"
  puts "Apartment name:"
  name = gets.strip
  puts "Square footage:"
  sqft = gets.to_i
  puts "Number of bedrooms:"
  bedrooms = gets.to_i
  puts "Number of bathrooms"
  bathrooms = gets.to_i
  Apartment.new(name, sqft, bedrooms, bathrooms)
end

def create_renter
  puts "Add new renter:"
  puts "Renter name:"
  name = gets.strip
  puts "Credit score:"
  sqft = gets.to_i
  puts "Salary:"
  salary = gets.to_i
  Renter.new(name, credit_score, salary)
end

puts create_building

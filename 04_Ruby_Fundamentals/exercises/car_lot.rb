#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'
#show all cars and print special message if cars are electric
def show_all_cars(cars)
  cars.each do |car|
    puts "The brand is #{car[:brand]}. The model is #{car[:model]}."
    puts "****This car is great for earth" unless car[:is_electric] == false
    #puts "This car is great for earth" if car[:is_electric] == true
  end
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)
  binding.pry
  all_cars
end

#created hashes
tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric:true}
mazda = {brand: "Mazda", model: "Rover", year: 2014, price: 45000, is_electric:false}
toyota = {brand: "Toyota", model: "Corola", year: 2005, price: 15000, is_electric:false}
honda = {brand: "Honda", model: "Fit", year: 2013, price: 55000, is_electric:true}

#APPROACH - A
#created array of hashes
#cars = []
#cars.push(tesla, mazda, toyota, honda)
#show_all_cars(cars)

#APPROACT - B
cars = add_cars(tesla, mazda, toyota, honda)
show_all_cars(cars)

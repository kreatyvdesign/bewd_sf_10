require 'pry'

class Apartment
  attr_accessor :bedrooms, :renter, :name, :bathrooms, :rent, :sqft #do we have to put attr_accesor before the initialize method?
  def initialize(name, sqft, bedrooms, bathrooms)
    @bedrooms = bedrooms
    @name = name
    @bathrooms = bathrooms
    @sqft = sqft
    @rent = nil #not required for initiating an instance
    @renter = nil #not required for initiating an instance
  end
  #def to_s #override default to_string method that's available out of the box
    #"Apartment #{name} has #{sqft} square feet."
  #end
  #def not_occupied?
    #renter.nil?
  #end
end

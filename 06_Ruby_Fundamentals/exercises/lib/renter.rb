require 'pry'

class Renter
  attr_accessor :credit_score, :salary, :name
  def initialize(name, credit_score, salary)
    @credit_score = credit_score
    @salary = salary
    @name = name
  end

#salary.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse

  def to_s
    "#{name} is a new renter with a #{credit_score} credit score and a #{salary} salary."
  end
end

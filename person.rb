require_relative 'nameable'
require_relative 'base_decoder'
require_relative 'capitalize_decoder'
require_relative 'trimer_decoder'
require_relative 'rental'

class Person < Nameable
  attr_accessor :name, :rental, :age, :id

  def initialize(name, age, id)
    super(name)
    @name = name
    @age = age
    @id = id
    @rental = []
  end

  def can_use_services?
    if is_of_age? || @parent_permission
      true
    else
      false
    end
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end
end







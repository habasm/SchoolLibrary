require_relative 'nameable'
require_relative 'base_decoder'
require_relative 'capitalize_decoder'
require_relative 'trimer_decoder'

class Person < Nameable
  attr_accessor :name, :age

  def initialize(age, name)
    super(name)

    @name = name

    @age = age
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

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, 'maximilianus')

puts person.correct_name

capitalized_person = CapitalizeDecorator.new(person)

puts capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

puts capitalized_trimmed_person.correct_name

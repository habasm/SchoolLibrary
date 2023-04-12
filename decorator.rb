require_relative 'nameable'

class Decorator < Nameable
  attr_accessor :nameable

  def correct_name
    @nameable.correct_name
  end
end

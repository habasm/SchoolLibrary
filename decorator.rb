require_relative 'nameable'

class Decorator < Nameable
  attr_reader :nameable

  def correct_name
    @nameable.correct_name
  end
end

class BaseDecorator < Nameable
  def initialize(nameable)
    super

    @nameable = nameable
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

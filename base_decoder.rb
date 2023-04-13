class BaseDecorator < Nameable
  def initialize(nameable)
    super
    @nameable = nameable
  end

  def correct_name
    raise NotImplementedError, 'You must implement the correct_name method'
  end
end

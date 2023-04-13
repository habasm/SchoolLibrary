class Nameable
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def correct_name
    raise NotImplementedError, 'Kindly Implement correct_name method to return the correct name'
  end
end

class Person < Nameable
  attr_accessor :name, :age, :rental

  def initialize(age, name)
    super(name)

    @name = name

    @age = age

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

require_relative 'create_book'

require_relative 'create_person'

require_relative 'list_books'

require_relative 'list_people'

require_relative 'list_rental_by_id'

require_relative 'create_rental'

require_relative 'switch'

puts 'Welcome to School Library'

puts 'Please choose an option by entering a number:'

class App
  def initialize()
    list_options = ['1 - List all books', '2 - List all people', '3 - Create a person', '4 - Create a book',

                    '5 - Create a rental', '6 - List all rentals for a given person id', '7 - Leave']
    @books = []

    @people = []

    @rentals = []

    @list_options = list_options
  end

  def run
    @list_options.each do |option|
      puts option
    end

    choice = gets.chomp.to_i

    case choice

    when 1, 2, 3

      switch(choice)

    when 4, 5, 6, 7

      switch_rental(choice)

    end
  end
end

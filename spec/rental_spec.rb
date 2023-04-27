require 'spec_helper'
require 'date'

describe Rental do
  book = Book.new 'Title', 'Author'
  student = Student.new 23, 'Full-stack', 'Habitamu Asimare'

  before :each do
    @rental = Rental.new book, student, Date.today
  end

  context '#new' do
    it 'takes three parameters and return a student object' do
      expect(@rental).to be_an_instance_of Rental
    end
  end

  context 'rental book' do
    it 'rental book must return a book object' do
      expect(@rental.book).to be_an_instance_of Book
    end
  end

  context 'rental student' do
    it 'rental person must be a student or teacher object' do
      expect(@rental.person).to be_an_instance_of(Student).or be_an_instance_of(Teacher)
    end
  end
end

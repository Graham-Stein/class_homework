require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def test_array_contains_books
    edinburgh_library = Library.new([{
    title: "Practical Object-Oriented Design in Ruby",
    rental_details: {
     student_name: "Larry Love",
     date: "20/08/17"
    }
  }])
    assert_equal("Practical Object-Oriented Design in Ruby", edinburgh_library.get_book_name)
    assert_equal("Larry Love",edinburgh_library.get_student_name)
    assert_equal("20/08/17",edinburgh_library.get_due_date)
  end

  def test_get_book_details
    edinburgh_library = Library.new([{
    title: "Practical Object-Oriented Design in Ruby",
    rental_details: {
     student_name: "Larry Love",
     date: "20/08/17"
    }
  }])
    assert_equal([{
    title: "Practical Object-Oriented Design in Ruby",
    rental_details: {
     student_name: "Larry Love",
     date: "20/08/17"
    }
  }], edinburgh_library.get_book_details("Practical Object-Oriented Design in Ruby"))
  end

  def test_get_book_rental_details
    edinburgh_library = Library.new([{
    title: "Practical Object-Oriented Design in Ruby",
    rental_details: {
     student_name: "Larry Love",
     date: "20/08/17"
    }
  }])
    assert_equal({
     student_name: "Larry Love",
     date: "20/08/17"
    }, edinburgh_library.get_book_rental_details("Practical Object-Oriented Design in Ruby"))
  end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def test_array_contains_books
    edinburgh_library = Library.new(["Practical Object-Oriented Design in Ruby", "Larry Love", "20/08/17")
    assert_equal("Practical Object-Oriented Design in Ruby", edinburgh_library[0][:title])
    # assert_equal("Larry Love",edinburgh_library[0][:rental_details][:student_name])
    # assert_equal("20/08/17",edinburgh_library[0][:rental_details][:date])
  end



end

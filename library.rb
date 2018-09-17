class Library

  attr_accessor :book

  def initialize(book)
    @book = book


  end

  def get_book_name
    @book[0][:title]
  end

  def get_student_name
    @book[0][:rental_details][:student_name]
  end

  def get_due_date
    @book[0][:rental_details][:date]
  end

  def get_book_details(sought_book)
    return @book if @book[0][:title] == sought_book
  end

  def get_book_rental_details(sought_book)
    return @book[0][:rental_details] if @book[0][:title] == sought_book

  end

end

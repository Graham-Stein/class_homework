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
    @book.each {|item|
      return item if item[:title] == sought_book
    }
  end

  def get_book_rental_details(sought_book)

    @book.each {|item|
      p "SOUGHT BOOK #{item}"

      return item[:rental_details] if item[:title] == sought_book
    }

  end

  def add_book_title(new_title, student_name, due_date)
    @book.push({title: new_title,
    rental_details: {
     student_name: student_name,
     date: due_date
     }
   })
   p @book
  end

end

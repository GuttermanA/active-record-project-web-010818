class User < ActiveRecord::Base
  has_many :user_books
  has_many :books, through: :user_books

  def check_out_book(book, due_date:)
    UserBook.find_or_create_by(user_id: self.id, book_id: book.id, due_date: due_date, returned:false)
  end

  def return_book(book)
    user = self
    user_book = UserBook.find_by(book_id: book.id, user_id: user.id)
    if user_book
      # user.books.delete(book)
      user_book.update(returned: true)
    end
  end

end

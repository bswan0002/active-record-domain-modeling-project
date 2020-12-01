class User < ActiveRecord::Base
  has_many :checkouts
  has_many :books, through: :checkouts

  def checkout_book(book, due_date, returned = false)
    Checkout.create(book: book, user: self, due_date: due_date, returned: returned)
  end
end
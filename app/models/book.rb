class Book < ApplicationRecord
  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors

  '''ruby
  # scope that returns books in alphabetical order
  '''
end
class Book
  attr_reader :name_book, :author

  def initialize(name_book, author)
    @name_book, @author = name_book, author
  end
end

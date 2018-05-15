require_relative '../model/book'
require_relative '../model/author'
require_relative '../model/reader'
require_relative '../model/order'

class AppReader

  FILE_AUTHORS = "data/authors.txt"
  FILE_BOOKS = "data/books.txt"
  FILE_READERS = "data/readers.txt"
  FILE_ORDERS = "data/orders.txt"

  def initialize(library)
    @library = library
    library.arr_authors = file_reads(FILE_AUTHORS, "authors")
    library.arr_books = file_reads(FILE_BOOKS, "books")
    library.arr_readers = file_reads(FILE_READERS, "readers")
    library.arr_orders = file_reads(FILE_ORDERS, "orders")
  end

  private

  def file_reads(f, name)
    arrays = []
    file = File.open(f, "r")
    file.each do |line|
      t = line.split(';')
      case name
      when "authors"
        author = Author.new(t[0], t[1].chomp)
        arrays.push(author)
      when "books"
        b_author = @library.arr_authors.select {|a| a.name_author.chomp == t[1].chomp}.first
        book = Book.new(t[0], b_author)
        arrays.push(book)
      when "readers"
        reader = Reader.new(t[0], t[1], t[2], t[3], t[4].chomp)
        arrays.push(reader)
      when "orders"
        book = @library.arr_books.select {|a| a.name_book == t[0]}.first
        reader = @library.arr_readers.select {|a| a.name_reader == t[1]}.first
        order = Order.new(book, reader, t[2].chomp)
        arrays.push(order)
      end
    end
    arrays
  end

end
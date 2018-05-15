require_relative '../model/book'
require_relative '../model/author'
require_relative '../model/reader'
require_relative '../model/order'
require_relative '../model/library'

class AppWrite

  def initialize(library)
    @library = library
    file_writes(AppReader::FILE_AUTHORS, "authors")
    file_writes(AppReader::FILE_BOOKS, "books")
    file_writes(AppReader::FILE_READERS, "readers")
    file_writes(AppReader::FILE_ORDERS, "orders")
  end

  private

  def file_writes(f, name)
    file = File.open(f, "w")
    case name
    when "authors"
      @library.arr_authors.each {
          |author| file.write("#{author.name_author};#{author.biography}\n")}
    when "books"
      @library.arr_books.each {
          |book| file.write("#{book.name_book};#{book.author.name_author}\n")}
    when "readers"
      @library.arr_readers.each {
          |reader| file.write("#{reader.name_reader};#{reader.email};#{reader.city};#{reader.street};#{reader.house}\n")}
    when "orders"
      @library.arr_orders.each {
          |order| file.write("#{order.book.name_book};#{order.reader.name_reader};#{order.date}\n")}
    end
  end

end

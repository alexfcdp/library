require_relative '../model/book'
require_relative '../model/author'
require_relative '../model/reader'
require_relative '../model/order'

class TestData

  def initialize(library)
    loading_data(library)
  end

  def loading_data(library)
    author1 = Author.new("Gregory Brown", "Has run the independently published Practicing Ruby journal since 2010, and is the original author of the popular Prawn PDF generation library.")
    author2 = Author.new("David Chelimsky", "Developer and lead cavaquinista at @cognitect.")
    author3 = Author.new("Paolo Perrotta", "Has more than ten years of experience as a developer and writer")
    author4 = Author.new("Peter J. Jones", "Peter J. Jones has been working professionally with Ruby since 2005")
    author5 = Author.new("Leonard Richardson", "Author of robotfindskitten, Beautiful Soup, RESTful Web APIs, and Constellation Games")
    author6 = Author.new("Jay McGavren", "Jay is a development teacher at Treehouse, and an occasional conference speaker")
    author7 = Author.new("Dawn Griffiths", "Popular Series By Dawn Griffiths")

    library.arr_authors = [author1, author2, author3, author4, author5, author6, author7]

    book1 = Book.new("Ruby Best Practices", author1)
    book2 = Book.new("The RSpec Book", author2)
    book3 = Book.new("Metaprogramming Ruby 2", author3)
    book4 = Book.new("Effective Ruby: 48", author4)
    book5 = Book.new("Ruby Cookbook", author5)
    book6 = Book.new("RESTful Web APIs", author5)
    book7 = Book.new("RESTful Web Services", author5)
    book8 = Book.new("Head First Ruby", author6)
    book9 = Book.new("Use a Cabeca!: Ruby", author6)
    book10 = Book.new("Use a Cabeca!: Rails", author7)
    book11 = Book.new("Head First C", author7)

    library.arr_books = [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10, book11]

    reader1 = Reader.new("Aleksey Zentcev", "aleksey@gmail.com", "Dnipro", "ul. Kim", "1")
    reader2 = Reader.new("Alexander Sushko", "alexandro@gmail.com", "Dnipro", "ul. Vakulenchuk", "2")
    reader3 = Reader.new("Alisa Tilik", "alisa@gmail.com", "Dnipro", "ul. Vakhrusheva", "3")
    reader4 = Reader.new("Andrii Taran", "andrii@gmail.com", "Dnipro", "ul. Vasily Sidorenko", "4")
    reader5 = Reader.new("Anton Voronin", "anton@gmail.com", "Dnipro", "ul. Brat'yev Kamenskikh", "5")
    reader6 = Reader.new("Artem Ribka", "artem@gmail.com", "Dnipro", "ul. Zernovaya", "6")
    reader7 = Reader.new("Danil Migrin", "danil@gmail.com", "Dnipro", "ul. Brat'yev Koval'chukov", "7")
    reader8 = Reader.new("Dmitryi Vagan", "dmitryi@gmail.com", "Dnipro", "ul. Baydakovskaya", "8")
    reader9 = Reader.new("Elina Kuchugurniy", "elina@gmail.com", "Dnipro", "ul. Kviringa", "9")
    reader10 = Reader.new("Aleksandr Semeoshin", "aleks_sem@gmail.com", "Dnipro", "ul. Kolkhoznaya", "10")

    library.arr_readers = [reader1, reader2, reader3, reader4, reader5, reader6, reader7, reader8, reader9, reader10]

    order1 = Order.new(book1, reader1, "09.04.2018")
    order2 = Order.new(book2, reader2, "10.04.2018")
    order3 = Order.new(book3, reader3, "10.04.2018")
    order4 = Order.new(book4, reader4, "10.04.2018")
    order5 = Order.new(book5, reader5, "15.04.2018")
    order6 = Order.new(book6, reader6, "16.04.2018")
    order7 = Order.new(book7, reader7, "16.04.2018")
    order8 = Order.new(book8, reader8, "25.04.2018")
    order9 = Order.new(book9, reader9, "26.04.2018")
    order10 = Order.new(book10, reader10, "28.04.2018")
    order11 = Order.new(book5, reader5, "28.04.2018")
    order12 = Order.new(book3, reader6, "29.04.2018")
    order13 = Order.new(book1, reader3, "01.05.2018")
    order14 = Order.new(book5, reader10, "03.05.2018")
    order15 = Order.new(book3, reader10, "04.05.2018")
    order16 = Order.new(book5, reader10, "04.05.2018")
    order17 = Order.new(book3, reader3, "04.05.2018")
    order18 = Order.new(book3, reader3, "04.05.2018")
    order19 = Order.new(book3, reader1, "04.05.2018")
    order20 = Order.new(book3, reader10, "05.05.2018")
    order21 = Order.new(book3, reader3, "06.05.2018")

    library.arr_orders = [order1, order2, order3, order4, order5, order6, order7, order8, order9, order10, order11, order12, order13, order14, order15, order16, order17, order18, order19, order20, order21]

  end

end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# users

require "open-uri"

puts "Cleaning database..."
User.destroy_all

# users

puts "Creating the user"

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.ZXmsrJLmj8Zr_Um2Gkv6aQHaI4&pid=Api")
puts "got the picture"
user = User.new(first_name: "Tristan", last_name: "M", email: "tm@lewagon.com", password: "TM12345", address: "Paris Corte, 75 Loampit Vale, London SE13 7FN")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.ZXmsrJLmj8Zr_Um2Gkv6aQHaI4&pid=Api")
puts "got the picture"
user1 = User.new(first_name: "Enrico", last_name: "J", email: "ej@lewagon.com", password: "EJ12345", address: "123 St Asaph Rd, Brockley, London SE4 2EJ")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.ZXmsrJLmj8Zr_Um2Gkv6aQHaI4&pid=Api")
puts "got the picture"
user2 = User.new(first_name: "Georg", last_name: "G", email: "gg@lewagon.com", password: "GG12345", address: "151 St Asaph Rd, Brockley, London SE4 2EJ")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user2.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.ZXmsrJLmj8Zr_Um2Gkv6aQHaI4&pid=Api")
puts "got the picture"
user3 = User.new(first_name: "Jay", last_name: "S", email: "js@lewagon.com", password: "JS12345", address: "125 St Asaph Rd, Brockley, London SE4 2EJ")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user3.save!

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.ZXmsrJLmj8Zr_Um2Gkv6aQHaI4&pid=Api")
puts "got the picture"
user4 = User.new(first_name: "Alice", last_name: "PB", email: "apb@lewagon.com", password: "APB12345", address: "127 St Asaph Rd, Brockley, London SE4 2EJ")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user4.save!

# books

puts "Binding the books"

book_temp = BookTemp.new(title: "Normal People",
 author: "Sally Rooney",
  description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
  isbn: "9780571334650")

file = URI.open("https://m.media-amazon.com/images/I/719lp7aAAxL.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
                isbn: "9780571334650",
                user: user,
                book_temp: book_temp)
# book.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

book_temp = BookTemp.new(title: "Normal People",
  author: "Sally Rooney",
   description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
   isbn: "9780571334652")

file = URI.open("https://m.media-amazon.com/images/I/719lp7aAAxL.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
                isbn: "9780571334652",
                user: user,
                book_temp: book_temp)
# book.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

book_temp = BookTemp.new(title: "Normal People",
  author: "Sally Rooney",
   description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
   isbn: "9780571334653")

file = URI.open("https://m.media-amazon.com/images/I/719lp7aAAxL.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
                isbn: "9780571334653",
                user: user4,
                book_temp: book_temp)
# book.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

book_temp = BookTemp.new(title: "Normal People",
  author: "Sally Rooney",
   description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
   isbn: "9780571334655")

file = URI.open("https://m.media-amazon.com/images/I/719lp7aAAxL.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
                isbn: "9780571334655",
                user: user4,
                book_temp: book_temp)
# book.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

book_temp = BookTemp.new(title: "Normal People",
  author: "Sally Rooney",
   description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
   isbn: "9780571334656")

file = URI.open("https://m.media-amazon.com/images/I/719lp7aAAxL.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
                isbn: "9780571334656",
                user: user2,
                book_temp: book_temp)
# book.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

book_temp = BookTemp.new(title: "Normal People",
  author: "Sally Rooney",
   description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
   isbn: "9780571334658")

file = URI.open("https://m.media-amazon.com/images/I/719lp7aAAxL.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
                isbn: "9780571334658",
                user: user3,
                book_temp: book_temp)
# book.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

book_temp = BookTemp.new(title: "Normal People",
  author: "Sally Rooney",
   description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
   isbn: "9780571334666")

file = URI.open("https://m.media-amazon.com/images/I/719lp7aAAxL.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland, but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner. But when the two strike up a conversation - awkward but electrifying - something life-changing begins. Normal People is a story of mutual fascination, friendship and love. It takes us from that first conversation to the years beyond, in the company of two people who try to stay apart but find they can't.",
                isbn: "9780571334666",
                user: user1,
                book_temp: book_temp)
# book.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

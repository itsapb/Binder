require "json"
require "open-uri"

# Book.destroy_all
# BookTemp.destroy_all

# url = "https://www.googleapis.com/books/v1/volumes?q=lord+of+the+rings&key=AIzaSyC1kURKAfO5p22IwVMlAJ0A2bfmG8s9YKY&printsec=frontcover&img=1&zoom=0&edge=curl&source=gbs_api"
# books_serialized = URI.open(url).read
# books = JSON.parse(books_serialized)

# # puts "#{books[:items]} - #{books["description"]}"

# books["items"].each do | book |
#   book_info = book["volumeInfo"]
#   p book_info
#   puts "--------"
#   next if book_info["imageLinks"].blank?
#   book_temp = BookTemp.new(title: book_info["title"], author: book_info["authors"][0], description: book_info["description"])
#   image_url = book_info["imageLinks"]["thumbnail"]
#   large_image_url = image_url.sub("zoom=1", "zoom=0")
#   p large_image_url
#   file = URI.open(large_image_url)
#   # article = Article.new(title: "NES", body: "A great console")
#   book_temp.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
#   book_temp.save
# end

puts "Cleaning database..."
User.destroy_all
Book.destroy_all

book_temp = BookTemp.new(
  title: "Normal People",
  author: "Sally Rooney",
  description: "Connell and Marianne grow up in the same small town in the west of Ireland,
  but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
  But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
  Normal People is a story of mutual fascination, friendship and love.",
  isbn: "9780571334630")
book_temp.save!

puts "Creating the user"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686318265/development/3e6ihehjoigzve1noou0ijvxq53q.jpg")
puts "got the picture"
user = User.new(
  first_name: "Tristan",
  last_name: "M",
  email: "tm@lewagon.com",
  password: "TM12345",
  address: "Paris Corte, 75 Loampit Vale, London SE13 7FN")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686318262/development/2z10wtuamz0w6428eyrcqd7wue9g.png")
puts "got the picture"
user1 = User.new(
  first_name: "Enrico",
  last_name: "J",
  email: "ej@lewagon.com",
  password: "EJ12345",
  address: "76-2 Revelon Rd, London SE4 2PN")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686318260/development/sp9lagnmsof956az3z8wirctke6v.jpg")
puts "got the picture"
user2 = User.new(
  first_name: "Georg",
  last_name: "G",
  email: "gg@lewagon.com",
  password: "GG12345",
  address: "51 Dundalk Rd, London SE4 2JJ")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user2.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686318256/development/8ohwd1m7gaws61xv3mox266uljtn.jpg")
puts "got the picture"
user3 = User.new(
  first_name: "Jay",
  last_name: "S",
  email: "js@lewagon.com",
  password: "JS12345",
  address: "13 St Norbert Rd, London SE4 2EY")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user3.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686318264/development/psik5dwd759kqliphf8z6yxmudr3.jpg")
puts "got the picture"
user4 = User.new(
  first_name: "Alice",
  last_name: "PB",
  email: "apb@lewagon.com",
  password: "APB12345",
  address: "127 St Asaph Rd, Brockley, London SE4 2EJ")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user4.save!


file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738876/719lp7aAAxL_lytkav.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland,
                but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
                But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
                Normal People is a story of mutual fascination, friendship and love.",
                isbn: "9780571334652",
                user: user3,
                currently_reading: true,
                book_temp: book_temp)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!


file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738876/719lp7aAAxL_lytkav.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland,
                but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
                But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
                Normal People is a story of mutual fascination, friendship and love.",
                isbn: "9780571334653",
                user: user3,
                currently_reading: true,
                book_temp: book_temp)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

# # users

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738923/61TxrF1alKL_nbqwvk.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland,
                but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
                But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
                Normal People is a story of mutual fascination, friendship and love.",
                isbn: "9780571334655",
                user: user3,
                currently_reading: false,
                book_temp: book_temp)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!


file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738926/1528719018.01._SCLZZZZZZZ_SX500__lysqgt.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland,
                but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
                But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
                Normal People is a story of mutual fascination, friendship and love.",
                isbn: "9780571334656",
                user: user3,
                currently_reading: true,
                book_temp: book_temp)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

# # books
# BookTemp.destroy_all
# puts "Binding the books"



# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738923/61TxrF1alKL_nbqwvk.jpg")
# book = Book.new(title: "Normal People",
#                 author: "Sally Rooney",
#                 description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#                 but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#                 But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#                 Normal People is a story of mutual fascination, friendship and love.",
#                 isbn: "9780571334630",
#                 user: user,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# book_temp = BookTemp.new(
#   title: "Normal People",
#   author: "Sally Rooney",
#   description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#   but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#   But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#   Normal People is a story of mutual fascination, friendship and love.",
#   isbn: "9780571334652")
# book_temp.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738876/719lp7aAAxL_lytkav.jpg")
# book = Book.new(title: "Normal People",
#                 author: "Sally Rooney",
#                 description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#                 but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#                 But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#                 Normal People is a story of mutual fascination, friendship and love.",
#                 isbn: "9780571334652",
#                 user: user,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# book_temp = BookTemp.new(
#   title: "Normal People",
#   author: "Sally Rooney",
#   description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#   but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#   But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#   Normal People is a story of mutual fascination, friendship and love.",
#   isbn: "9780571334653")
# book_temp.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738876/719lp7aAAxL_lytkav.jpg")
# book = Book.new(title: "Normal People",
#                 author: "Sally Rooney",
#                 description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#                 but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#                 But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#                 Normal People is a story of mutual fascination, friendship and love.",
#                 isbn: "9780571334653",
#                 user: user4,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# book_temp = BookTemp.new(
#   title: "Normal People",
#   author: "Sally Rooney",
#   description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#   but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#   But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#   Normal People is a story of mutual fascination, friendship and love.",
#   isbn: "9780571334655")
# book_temp.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738923/61TxrF1alKL_nbqwvk.jpg")
# book = Book.new(title: "Normal People",
#                 author: "Sally Rooney",
#                 description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#                 but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#                 But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#                 Normal People is a story of mutual fascination, friendship and love.",
#                 isbn: "9780571334655",
#                 user: user4,
#                 currently_reading: false,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# book_temp = BookTemp.new(
#   title: "Normal People",
#   author: "Sally Rooney",
#   description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#   but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#   But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#   Normal People is a story of mutual fascination, friendship and love.",
#   isbn: "9780571334656")
# book_temp.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738926/1528719018.01._SCLZZZZZZZ_SX500__lysqgt.jpg")
# book = Book.new(title: "Normal People",
#                 author: "Sally Rooney",
#                 description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#                 but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#                 But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#                 Normal People is a story of mutual fascination, friendship and love.",
#                 isbn: "9780571334656",
#                 user: user2,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# book_temp = BookTemp.new(
#   title: "Normal People",
#   author: "Sally Rooney",
#   description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#   but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#   But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#   Normal People is a story of mutual fascination, friendship and love.",
#   isbn: "9780571334658")
# book_temp.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738923/61TxrF1alKL_nbqwvk.jpg")
# book = Book.new(title: "Normal People",
#                 author: "Sally Rooney",
#                 description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#                 but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#                 But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#                 Normal People is a story of mutual fascination, friendship and love.",
#                 isbn: "9780571334658",
#                 user: user3,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# book_temp = BookTemp.new(
#   title: "Normal People",
#   author: "Sally Rooney",
#   description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#   but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#   But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#   Normal People is a story of mutual fascination, friendship and love.",
#   isbn: "9780571334666")
# book_temp.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738876/719lp7aAAxL_lytkav.jpg")
# book = Book.new(title: "Normal People",
#                 author: "Sally Rooney",
#                 description: "Connell and Marianne grow up in the same small town in the west of Ireland,
#                 but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
#                 But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
#                 Normal People is a story of mutual fascination, friendship and love.",
#                 isbn: "9780571334666",
#                 user: user1,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

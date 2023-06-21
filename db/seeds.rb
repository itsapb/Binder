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
Review.destroy_all
Drop.destroy_all
User.destroy_all
BookTemp.destroy_all
Book.destroy_all
puts "Cleaned database"

puts "Creating the user"

puts "new user"
file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687195304/T02NE0241-U053T86GEAJ-g5ed5954d6f7-512_kuzch2.png")
puts "got first picture"
user = User.new(
  first_name: "Tristan",
  last_name: "M",
  email: "tm@lewagon.com",
  bio: "My favourite book is Secret Diary of a Vampire. Don't like it? Fight me.",
  password: "TM12345",
  address: "Paris Corte, 75 Loampit Vale, London SE13 7FN")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
puts "user photo attached"
user.save!

puts "new user"
file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687195176/T02NE0241-U0541PVH7QX-ecdf1277a3f0-512_vqdha9.jpg")
user1 = User.new(
  first_name: "Enrico",
  last_name: "J",
  email: "ej@lewagon.com",
  bio: "Fellow book nerds is my name, reading is my game.",
  password: "EJ12345",
  address: "43 Manor Ave, London SE4 1PE")
user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save!

puts "new user"
file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687195265/T02NE0241-U053R1BRNFQ-b37bf278476b-512_yf5xxx.jpg")
user2 = User.create(
  first_name: "Georg",
  last_name: "G",
  email: "gg@lewagon.com",
  bio: "I love immersing myself in diverse worlds and experiencing the power of words that stir my soul.",
  password: "GG12345",
  address: "51 Aspinall Rd, London SE4 2JJ")
user2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user2.save!

puts "new user"
file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687195270/T02NE0241-U0548RXBZ6Z-1b4f3e853d3c-512_viooxz.png")
user3 = User.create(
  first_name: "Jay",
  last_name: "S",
  email: "js@lewagon.com",
  bio: "Books have become my sanctuary, where imagination takes flight and knowledge blooms. I just love reading and would like to meet and chat to some
  other book nerds like me. My favrouite genres are fantasy fiction and historical fiction.
  Welcome to borrow from me any time 👻 ",
  password: "JS12345",
  address: "13 St Norbert Rd, London SE4 2EY")
user3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user3.save!

puts "new user"
file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686049559/b2344430-b52f-4327-a75d-98954ffe3407_kkseel.jpg")
user4 = User.new(
  first_name: "Alice",
  last_name: "PB",
  email: "apb@lewagon.com",
  password: "APB12345",
  bio: "From the moment I discovered the enchantment of books,
  I have been captivated by their ability to transport me to different eras,
  cultures, and realms, igniting my imagination and
  fueling a never-ending thirst for knowledge.",
  address: "127 St Asaph Rd, Brockley, London SE4 2EJ")
user4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user4.save!

puts "new user"
file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686304156/development/h81hxatj2p0wqlvyqy260k8q08xa.jpg")
user5 = User.create!(
  first_name: "Jennifer",
  last_name: "Paige",
  email: "JP@lewagon.com",
  password: "APB12345",
  bio: "I am an avid book lover, finding solace and joy within the pages of countless stories.",
  address: "51 Cranfield Rd, London SE4 1TN")
user5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user5.save!

puts "new user"
file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686304523/development/w6w5upk7q90i4yvfpf1hjtofjuq9.png")
user6 = User.create!(
  first_name: "Isabella",
  last_name: "Wright",
  email: "IW@lewagon.com",
  password: "APB12345",
  bio: "With each turn of a page, I am transported to realms unexplored,
  forever enamored by the power of literature.",
  address: "22 Turnham Rd, London SE4 2LA")
user6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user6.save!

puts "new user"
file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686304400/development/pb04s4i2gseyml2nq3zodduotm7z.jpg")
user7 = User.create!(first_name: "James",
  last_name: "Turner",
  email: "JT@lewagon.com",
  password: "APB12345",
  bio: "Just here, curating my list of books to read.
  Would love to chat with likeminded book lovers.",
  address: "The Old Nun's Head, 15 Nunhead Grn, London SE15 3QQ")
user7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user7.save!

puts "new user"
user8 = User.create!(
  first_name: "Emma",
  last_name: "Roberts",
  email: "ER@lewagon.com",
  password: "APB12345",
  address: "1 Kitto Rd, London SE14 5SN")

puts "new user"
user9 = User.create!(
  first_name: "Andrew",
  last_name: "Anderson",
  email: "AA@lewagon.com",
  password: "APB12345",
  address: "1 Stondon Park, London SE23 1LB")

puts "new user"
user10 = User.create!(
  first_name: "Olivia",
  last_name: "Walker",
  email: "OW@lewagon.com",
  password: "APB12345",
  address: "1 Ewhurst Rd, London SE4 1AG")

# puts "new user"
# user11 = User.create!(
#   first_name: "Matthew",
#   last_name: "Wilson",
#   email: "MW@lewagon.com",
#   password: "APB12345",
#   address: "N125 3, 8005-412 Faro, Portugal")


# puts "new user"
# user12 = User.create!(
#   first_name: "Sophia",
#   last_name: "Jackson",
#   email: "SJ@lewagon.com",
#   password: "APB12345",
#   address: "8005-429 Faro, Portugal")

# puts "new user"
# user13 = User.create!(
#   first_name: "Daniel",
#   last_name: "Miller",
#   email: "DM@lewagon.com",
#   password: "APB12345",
#   address: "Quinta do Lago, Roundabout 6, Av. Ayrton Senna de Silva, 8135-024 Portugal")

# puts "new user"
# user14 = User.create!(
#   first_name: "Emily",
#   last_name: "Thompson",
#   email: "ET@lewagon.com",
#   password: "APB12345",
#   address: "Estrada Nacional 125/10. 322 A, 8005-146 Faro, Portugal")

# puts "new user"
# user15 = User.create!(
#   first_name: "Michael",
#   last_name: "Scott",
#   email: "MS@lewagon.com",
#   password: "APB12345",
#   address: "sitio dos virgilios, 8005-144 Faro, Portugal")

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081146/development/revenge_xlmz3s.png")
book_temp = BookTemp.new(
  title: "Revenge",
  author: "Yoko Ogawa",
  description: "A woman goes into a bakery to buy a strawberry cream tart.
  The place is immaculate but there is no one serving so she waits.
  Another customer comes in. The woman tells the new arrival that she is buying her son a treat for his birthday.
  Every year she buys him his favourite cake;
  even though he died in an accident when he was six years old. A hanuting tale of love and loss.",
  isbn: "9780571334653")
book_temp.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book_temp.save!

puts "First Book_Temp, now associated books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081146/development/revenge_xlmz3s.png")
book = Book.new(title: "Revenge",
                author: "Yoko Ogawa",
                description: "A woman goes into a bakery to buy a strawberry cream tart.
                The place is immaculate but there is no one serving so she waits.
                Another customer comes in. The woman tells the new arrival that she is buying her son a treat for his birthday.
                Every year she buys him his favourite cake;
                even though he died in an accident when he was six years old. A hanuting tale of love and loss.",
                isbn: "9780571334653",
                user: user4,
                have_read: false,
                currently_reading: true,
                book_temp: book_temp)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

puts "Got one book"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738876/719lp7aAAxL_lytkav.jpg")
book_temp1 = BookTemp.new(
  title: "Normal People",
  author: "Sally Rooney",
  description: "Connell and Marianne grow up in the same small town in the west of Ireland,
  but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
  But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
  Normal People is a story of mutual fascination, friendship and love.",
  isbn: "9780571334630")
book_temp1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book_temp1.save!

puts "Second Book_Temp, now associated books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738876/719lp7aAAxL_lytkav.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland,
                but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
                But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
                Normal People is a story of mutual fascination, friendship and love.",
                isbn: "9780571334652",
                user: user3,
                droppable: true,
                have_read: true,
                currently_reading: false,
                book_temp: book_temp1)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738876/719lp7aAAxL_lytkav.jpg")
book = Book.new(title: "Normal People",
                author: "Sally Rooney",
                description: "Connell and Marianne grow up in the same small town in the west of Ireland,
                but the similarities end there. In school, Connell is popular and well-liked, while Marianne is a loner.
                But when the two strike up a conversation - awkward but electrifying - something life-changing begins.
                Normal People is a story of mutual fascination, friendship and love.",
                isbn: "9780571334652",
                user: user,
                currently_reading: true,
                book_temp: book_temp)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

puts "Got two books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081147/development/Follet_rhercx.png")
book_temp2 = BookTemp.new(
  title: "The Armour of Light",
  author: "Ken Follet",
  description: "Revolution is in the air. 1792.
  A tyrannical government is determined to make England a mighty commercial empire.
  In France, Napoleon Bonaparte begins his rise to power, and with dissent rife,
  France's neighbours are on high alert.",
  isbn: "9780571334653")
book_temp2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book_temp2.save!

puts "Third Book_Temp, now associated books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081147/development/Follet_rhercx.png")
book = Book.new(title: "The Armour of Light",
                author: "Ken Follet",
                description: "Revolution is in the air. 1792.
                A tyrannical government is determined to make England a mighty commercial empire.
                In France, Napoleon Bonaparte begins his rise to power, and with dissent rife,
                France's neighbours are on high alert.",
                isbn: "9780571334653",
                user: user3,
                currently_reading: false,
                have_read: true,
                droppable: true,
                book_temp: book_temp2)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081147/development/Follet_rhercx.png")
book = Book.new(title: "The Armour of Light",
                author: "Ken Follett",
                description: "Ken Follett's newest book! A thrilling and addictive new novel--
                a prequel to The Pillars of the Earth--set in England at the dawn of a new era:
                the Middle Ages",
                isbn: "9780571334658",
                user: user6,
                droppable: false,
                have_read: false,
                currently_reading: true,
                book_temp: book_temp2)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081147/development/Follet_rhercx.png")
book = Book.new(title: "The Armour of Light",
                author: "Ken Follet",
                description: "Revolution is in the air. 1792.
                A tyrannical government is determined to make England a mighty commercial empire.
                In France, Napoleon Bonaparte begins his rise to power, and with dissent rife,
                France's neighbours are on high alert.",
                isbn: "9780571334653",
                user: user1,
                currently_reading: true,
                have_read: false,
                droppable: false,
                book_temp: book_temp2)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

puts "Got two books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738923/61TxrF1alKL_nbqwvk.jpg")
book_temp3 = BookTemp.new(
  title: "Olive Kitteridge",
  author: "Elizabeth Strout",
  description: "The first story centers on Henry Kitteridge,
  the pharmacist of the town of Crosby and husband of Olive,
  and his relationship with an employee, Denise Thibodeau.
  Henry daydreams of taking care of Denise after the death of her husband,
  though he still loves his cantankerous wife Olive. Jerry McCarthy, the delivery boy,
  eventually proposes to Denise and the couple move to Texas.
  Denise maintains contact with Henry through a yearly birthday letter.",
  isbn: "9780571334655")
book_temp3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book_temp3.save!

puts "Forth Book_Temp, now associated books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738923/61TxrF1alKL_nbqwvk.jpg")
book = Book.new(title: "Olive Kitteridge",
                author: "Elizabeth Strout",
                description: "The first story centers on Henry Kitteridge,
                the pharmacist of the town of Crosby and husband of Olive,
                and his relationship with an employee, Denise Thibodeau.
                Henry daydreams of taking care of Denise after the death of her husband,
                though he still loves his cantankerous wife Olive. Jerry McCarthy, the delivery boy,
                eventually proposes to Denise and the couple move to Texas.
                Denise maintains contact with Henry through a yearly birthday letter.",
                isbn: "9780571334655",
                user: user3,
                droppable: false,
                have_read: true,
                currently_reading: false,
                book_temp: book_temp3)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738923/61TxrF1alKL_nbqwvk.jpg")
book = Book.new(title: "Olive Kitteridge",
                author: "Elizabeth Strout",
                description: "The first story centers on Henry Kitteridge,
                the pharmacist of the town of Crosby and husband of Olive,
                and his relationship with an employee, Denise Thibodeau.
                Henry daydreams of taking care of Denise after the death of her husband,
                though he still loves his cantankerous wife Olive. Jerry McCarthy, the delivery boy,
                eventually proposes to Denise and the couple move to Texas.
                Denise maintains contact with Henry through a yearly birthday letter.",
                isbn: "9780571334655",
                user: user6,
                droppable: true,
                have_read: true,
                currently_reading: false,
                book_temp: book_temp3)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738923/61TxrF1alKL_nbqwvk.jpg")
book = Book.new(title: "Olive Kitteridge",
                author: "Elizabeth Strout",
                description: "The first story centers on Henry Kitteridge,
                the pharmacist of the town of Crosby and husband of Olive,
                and his relationship with an employee, Denise Thibodeau.
                Henry daydreams of taking care of Denise after the death of her husband,
                though he still loves his cantankerous wife Olive. Jerry McCarthy, the delivery boy,
                eventually proposes to Denise and the couple move to Texas.
                Denise maintains contact with Henry through a yearly birthday letter.",
                isbn: "9780571334655",
                user: user4,
                droppable: true,
                currently_reading: false,
                have_read: true,
                book_temp: book_temp3)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738923/61TxrF1alKL_nbqwvk.jpg")
book = Book.new(title: "Olive Kitteridge",
                author: "Elizabeth Strout",
                description: "The first story centers on Henry Kitteridge,
                the pharmacist of the town of Crosby and husband of Olive,
                and his relationship with an employee, Denise Thibodeau.
                Henry daydreams of taking care of Denise after the death of her husband,
                though he still loves his cantankerous wife Olive. Jerry McCarthy, the delivery boy,
                eventually proposes to Denise and the couple move to Texas.
                Denise maintains contact with Henry through a yearly birthday letter.",
                isbn: "9780571334655",
                user: user4,
                currently_reading: false,
                droppable: false,
                have_read: true,
                book_temp: book_temp)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

puts "Got four books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081146/development/loverman_xqywcg.png")
book_temp4 = BookTemp.new(
  title: "Mr Loverman",
  author: "Bernardine Evaristo",
  description: "Barrington Jedidiah Walker is seventy-four and leads a double life. Born and bred in Antigua,
  he's lived in Hackney since the sixties.
  A flamboyant, wise-cracking local character with a dapper taste in retro suits and a fondness for quoting
    Shakespeare, Barrington is a husband, father and grandfather -
    but he is also secretly homosexual, lovers with his great childhood friend, Morris.

  His deeply religious and disappointed wife, Carmel, thinks he sleeps with other women.
  When their marriage goes into meltdown, Barrington wants to divorce Carmel and live with Morris,
  but after a lifetime of fear and deception, will he manage to break away?",
  isbn: "9780571334630")
book_temp4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book_temp4.save!

puts "Fifth Book_Temp, now associated books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081146/development/loverman_xqywcg.png")
book = Book.new(title: "Mr Loverman",
                author: "Bernardine Evaristo",
                description: "Barrington Jedidiah Walker is seventy-four and leads a double life. Born and bred in Antigua,
                he's lived in Hackney since the sixties.
                A flamboyant, wise-cracking local character with a dapper taste in retro suits and a fondness for quoting
                 Shakespeare, Barrington is a husband, father and grandfather -
                 but he is also secretly homosexual, lovers with his great childhood friend, Morris.

                His deeply religious and disappointed wife, Carmel, thinks he sleeps with other women.
                When their marriage goes into meltdown, Barrington wants to divorce Carmel and live with Morris,
                but after a lifetime of fear and deception, will he manage to break away?",
                isbn: "9780571334630",
                user: user8,
                droppable: false,
                have_read: false,
                currently_reading: true,
                book_temp: book_temp4)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081146/development/loverman_xqywcg.png")
book = Book.new(title: "Mr Loverman",
                author: "Bernardine Evaristo",
                description: "Barrington Jedidiah Walker is seventy-four and leads a double life. Born and bred in Antigua,
                he's lived in Hackney since the sixties.
                A flamboyant, wise-cracking local character with a dapper taste in retro suits and a fondness for quoting
                 Shakespeare, Barrington is a husband, father and grandfather -
                 but he is also secretly homosexual, lovers with his great childhood friend, Morris.

                His deeply religious and disappointed wife, Carmel, thinks he sleeps with other women.
                When their marriage goes into meltdown, Barrington wants to divorce Carmel and live with Morris,
                but after a lifetime of fear and deception, will he manage to break away?",
                isbn: "9780571334630",
                user: user4,
                droppable: true,
                have_read: true,
                currently_reading: false,
                book_temp: book_temp4)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

puts "Got two books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738926/1528719018.01._SCLZZZZZZZ_SX500__lysqgt.jpg")
book_temp5 = BookTemp.new(
  title: "1984",
  author: "George Orwell",
  description: "Who controls the past controls the future: who controls the present controls the past.

  As much a cultural and historical marker as an absorbing thriller,
  George Orwell’s 1984 changed and continues to change the way we think about the past and imagine
  the future. Perhaps the most pervasively influential novel of the twentieth century,
  1984 resonates so completely have to become part of our commonplace lexicon,
  with words like doublethink and Big Brother (it was also Orwell who first coined the term ‘Cold War’)
  becoming part of the fabric of everyday life and speech.",
  isbn: "9780571334656")
book_temp5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book_temp5.save!

puts "Sixth Book_Temp, now associated books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738926/1528719018.01._SCLZZZZZZZ_SX500__lysqgt.jpg")
book = Book.new(title: "1984",
                author: "George Orwell",
                description: "Who controls the past controls the future: who controls the present controls the past.

                As much a cultural and historical marker as an absorbing thriller,
                George Orwell’s 1984 changed and continues to change the way we think about the past and imagine
                the future. Perhaps the most pervasively influential novel of the twentieth century,
                1984 resonates so completely have to become part of our commonplace lexicon,
                with words like doublethink and Big Brother (it was also Orwell who first coined the term ‘Cold War’)
                becoming part of the fabric of everyday life and speech.",
                isbn: "9780571334656",
                user: user3,
                droppable: false,
                have_read: true,
                currently_reading: false,
                book_temp: book_temp5)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686738926/1528719018.01._SCLZZZZZZZ_SX500__lysqgt.jpg")
book = Book.new(title: "1984",
                author: "George Orwell",
                description: "Who controls the past controls the future: who controls the present controls the past.

                As much a cultural and historical marker as an absorbing thriller,
                George Orwell’s 1984 changed and continues to change the way we think about the past and imagine
                the future. Perhaps the most pervasively influential novel of the twentieth century,
                1984 resonates so completely have to become part of our commonplace lexicon,
                with words like doublethink and Big Brother (it was also Orwell who first coined the term ‘Cold War’)
                becoming part of the fabric of everyday life and speech.",
                isbn: "9780571334656",
                user: user2,
                droppable: false,
                have_read: false,
                currently_reading: true,
                book_temp: book_temp5)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

puts "Got two books!!"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686913936/816N1Kv6gfL_bvharw.jpg")
book_temp6 = BookTemp.new(
  title: "Ultra-Processed People",
  author: "Chris van Tulleken",
  description: "An eye-opening investigation into the science, economics,
  history and production of ultra-processed food.
  It's not you, it's the food.
  We have entered a new 'age of eating' where most of our calories come from an entirely
  novel set of substances called Ultra-Processed Food, food which is industrially processed
  and designed and marketed to be addictive. But do we really know what it's doing to our bodies?
  Join Chris in his travels through the world of food science and a UPF diet
  to discover what's really going on. Find out why exercise and willpower can't save us,
  and what UPF is really doing to our bodies, our health, our weight, and the planet
  (hint: nothing good).",
  isbn: "9780571334658")
book_temp6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book_temp6.save!

puts "Seventh Book_Temp, now associated books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686913936/816N1Kv6gfL_bvharw.jpg")
book = Book.new(title: "Ultra-Processed People",
                author: "Chris van Tulleken",
                description: "An eye-opening investigation into the science, economics,
                history and production of ultra-processed food.
                It's not you, it's the food.
                We have entered a new 'age of eating' where most of our calories come from an entirely
                novel set of substances called Ultra-Processed Food, food which is industrially processed
                and designed and marketed to be addictive. But do we really know what it's doing to our bodies?
                Join Chris in his travels through the world of food science and a UPF diet
                to discover what's really going on. Find out why exercise and willpower can't save us,
                and what UPF is really doing to our bodies, our health, our weight, and the planet
                (hint: nothing good).",
                isbn: "9780571334658",
                user: user2,
                droppable: true,
                have_read: true,
                currently_reading: false,
                book_temp: book_temp6)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686913936/816N1Kv6gfL_bvharw.jpg")
book = Book.new(title: "Ultra-Processed People",
                author: "Chris van Tulleken",
                description: "An eye-opening investigation into the science, economics,
                history and production of ultra-processed food.
                It's not you, it's the food.
                We have entered a new 'age of eating' where most of our calories come from an entirely
                novel set of substances called Ultra-Processed Food, food which is industrially processed
                and designed and marketed to be addictive. But do we really know what it's doing to our bodies?
                Join Chris in his travels through the world of food science and a UPF diet
                to discover what's really going on. Find out why exercise and willpower can't save us,
                and what UPF is really doing to our bodies, our health, our weight, and the planet
                (hint: nothing good).",
                isbn: "9780571334658",
                user: user3,
                droppable: false,
                have_read: false,
                currently_reading: true,
                book_temp: book_temp6)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686913936/816N1Kv6gfL_bvharw.jpg")
book = Book.new(title: "Ultra-Processed People",
                author: "Chris van Tulleken",
                description: "An eye-opening investigation into the science, economics,
                history and production of ultra-processed food.
                It's not you, it's the food.
                We have entered a new 'age of eating' where most of our calories come from an entirely
                novel set of substances called Ultra-Processed Food, food which is industrially processed
                and designed and marketed to be addictive. But do we really know what it's doing to our bodies?
                Join Chris in his travels through the world of food science and a UPF diet
                to discover what's really going on. Find out why exercise and willpower can't save us,
                and what UPF is really doing to our bodies, our health, our weight, and the planet
                (hint: nothing good).",
                isbn: "9780571334658",
                user: user7,
                droppable: false,
                have_read: false,
                currently_reading: true,
                book_temp: book_temp6)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

puts "Got three books!!"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081148/development/cleo_lbwee0.png")
book_temp7 = BookTemp.new(
  title: "Cleopatra and Frankenstein",
  author: "Coco Mellors",
  description: "New York is slipping from Cleo's grasp.
  Sure, she's at a different party every other night,
  but she barely knows anyone. Her student visa is running out,
  and she doesn't even have money for cigarettes. But then she meets Frank.
  Twenty years older, Frank's life is full of all the success and excess that Cleo's lacks.
  He offers her the chance to be happy, the freedom to paint,
  and the opportunity to apply for a green card.
  She offers him a life imbued with beauty and art-and,
  hopefully, a reason to cut back on his drinking.
  He is everything she needs right now.

  Cleo and Frank run head-first into a romance that neither of them can quite keep up with.
  It reshapes their lives and the lives of those around them,
  whether that's Cleo's best friend struggling to embrace his gender identity in the wake of her marriage,
  or Frank's financially dependent sister arranging sugar daddy dates after being
  cut off. Ultimately, this chance meeting between two strangers outside of a
  New Year's Eve party changes everything, for better or worse.",
  isbn: "9780571334666")
book_temp7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book_temp7.save!

puts "Seventh Book_Temp, now associated books"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081148/development/cleo_lbwee0.png")
book = Book.new(title: "Cleopatra and Frankenstein",
                author: "Coco Mellors",
                description: "New York is slipping from Cleo's grasp.
                Sure, she's at a different party every other night,
                but she barely knows anyone. Her student visa is running out,
                and she doesn't even have money for cigarettes. But then she meets Frank.
                Twenty years older, Frank's life is full of all the success and excess that Cleo's lacks.
                He offers her the chance to be happy, the freedom to paint,
                and the opportunity to apply for a green card.
                She offers him a life imbued with beauty and art-and,
                hopefully, a reason to cut back on his drinking.
                He is everything she needs right now.

                Cleo and Frank run head-first into a romance that neither of them can quite keep up with.
                It reshapes their lives and the lives of those around them,
                whether that's Cleo's best friend struggling to embrace his gender identity in the wake of her marriage,
                or Frank's financially dependent sister arranging sugar daddy dates after being
                cut off. Ultimately, this chance meeting between two strangers outside of a
                New Year's Eve party changes everything, for better or worse.",
                isbn: "9780571334666",
                user: user1,
                droppable: true,
                have_read: true,
                currently_reading: false,
                book_temp: book_temp7)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687081148/development/cleo_lbwee0.png")
book = Book.new(title: "Cleopatra and Frankenstein",
  author: "Coco Mellors",
  description: "New York is slipping from Cleo's grasp.
  Sure, she's at a different party every other night,
  but she barely knows anyone. Her student visa is running out,
  and she doesn't even have money for cigarettes. But then she meets Frank.
  Twenty years older, Frank's life is full of all the success and excess that Cleo's lacks.
  He offers her the chance to be happy, the freedom to paint,
  and the opportunity to apply for a green card.
  She offers him a life imbued with beauty and art-and,
  hopefully, a reason to cut back on his drinking.
  He is everything she needs right now.

  Cleo and Frank run head-first into a romance that neither of them can quite keep up with.
  It reshapes their lives and the lives of those around them,
  whether that's Cleo's best friend struggling to embrace his gender identity in the wake of her marriage,
  or Frank's financially dependent sister arranging sugar daddy dates after being
  cut off. Ultimately, this chance meeting between two strangers outside of a
  New Year's Eve party changes everything, for better or worse.",
                isbn: "9780571334658",
                user: user9,
                droppable: false,
                have_read: false,
                currently_reading: true,
                book_temp: book_temp7)
book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
book.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687174545/9781860467226-uk_drbzrl.jpg")
# book = Book.new(title: "The History of the Siege of Lisbon",
#   author: "José Saramago",
#   description: "What happens when the facts of history are replaced by the mysteries of love?
#   When Raimundo Silva, a lowly proofreader for a Lisbon publishing house,
#   inserts a negative into a sentence of a historical text,
#   he alters the whole course of the 1147 Siege of Lisbon.
#   Fearing censure he is met instead with admiration:
#   Dr Maria Sara, his voluptuous new editor, encourages him to pen his own alternative history.
#   As his retelling draws on all his imaginative powers,
#   Silva finds – to his nervous delight – that if the facts of the past can be rewritten as a romance then
#   so can the details of his own dusty bachelor present.",
#                 isbn: "9780571334658",
#                 user: user14,
#                 droppable: false,
#                 have_read: false,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687174545/9781860467226-uk_drbzrl.jpg")
# book = Book.new(title: "The History of the Siege of Lisbon",
#   author: "José Saramago",
#   description: "What happens when the facts of history are replaced by the mysteries of love?
#   When Raimundo Silva, a lowly proofreader for a Lisbon publishing house,
#   inserts a negative into a sentence of a historical text,
#   he alters the whole course of the 1147 Siege of Lisbon.
#   Fearing censure he is met instead with admiration:
#   Dr Maria Sara, his voluptuous new editor, encourages him to pen his own alternative history.
#   As his retelling draws on all his imaginative powers,
#   Silva finds – to his nervous delight – that if the facts of the past can be rewritten as a romance then
#   so can the details of his own dusty bachelor present.",
#                 isbn: "9780571334658",
#                 user: user15,
#                 droppable: false,
#                 have_read: false,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687174498/1860466850_os6auj.jpg")
# book = Book.new(title: "Blindness",
#   author: "José Saramago",
#   description: "A driver waiting at the traffic lights goes blind.
#   An opthamologist tries to diagnose his distinctive blindness, but is affected before he can read the textbooks.
#   It becomes a contagion, spreading throughout the city. Trying to stem the epidemic, the authorities herd the afflicted
#   into a mental asylum where the wards are terrorised by blind thugs.",
#                 isbn: "9780571334658",
#                 user: user13,
#                 droppable: false,
#                 have_read: false,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687174496/9788532511669-uk_u1w1kj.jpg")
# book = Book.new(title: "Harry Potter: E A Camara Secreta",
#   author: "JK Rowling",
#   description: "Harry Potter e a camara secreta esta repleto de aventuras
#   fantasticas e recheado de supresas, que irao proporcionar ao leitor o
#   magico prazer da leitura",
#                 isbn: "9780571334658",
#                 user: user12,
#                 droppable: false,
#                 have_read: false,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1687174958/this_sorrow_that_lifts_me_up_book_cover_yxzq98.jpg")
# book = Book.new(title: "A tristeza que me vive",
#   author: "Florbela Espanca",
#   description: "After her untimely demise in 1930, Espanca quickly became the stuff of legend,
#   thanks to the captivating ombination of a tumultuous life-story and a string of signature sonnets
#   that alternate between feelings of crushing failure and proclamations of lust for life.",
#                 isbn: "9780571334658",
#                 user: user11,
#                 droppable: false,
#                 have_read: false,
#                 currently_reading: true,
#                 book_temp: book_temp)
# book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# book.save!

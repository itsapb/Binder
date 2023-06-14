class DashboardController < ApplicationController

  def index
    @user = current_user
    @booking = @user.booking

    client = Goodreads.new(api_key: ENV['GOODREADS_API_KEY'])
    @books = client.listopia("interesting")

    @droppable_books = Book.where(droppable: true)
    @currently_reading = @user.books.where(currently_reading: true)
    @borrowed_books = @user.books.where(borrowed: true)
    @read_books = @user.books.where(have_read: true)

  end



end

# what we need:
# displaying books
# displaying book being read (currently_reading = true)
# displaying read books (have_read = true)
# droppable (droppable = true)
# creating a drop

# if currently_reading = true
#   @reading_books
#   <ul>
#   <% @books.each do |book| %>
#     <% if book.currently_reading %>
#       <li><%= book.title %></li>
#       <li><%= book.author %></li>
#       <!-- Display other book attributes as needed -->
#     <% end %>
#   <% end %>
# </ul>

#   <h1>Books Being Read</h1>
#   <ul>
#   <% @books.each do |book| %>
#     <% if book.have_read %>
#       <li><%= book.title %></li>
#       <li><%= book.author %></li>
#       <!-- Display other book attributes as needed -->
#     <% end %>
#   <% end %>
# </ul>

# if borrowed_books = true
#     @reading_books

#     DROPPABLE
#     <ul>
#   <% @books.each do |book| %>
#     <% if book.droppable %>
#       <li><%= book.title %></li>
#       <li><%= book.author %></li>
#       <!-- Display other book attributes as needed -->
#     <% end %>
#   <% end %>
# </ul>

# Creating a drop
#   def create
#     book = Book.find(params[:book_id])
#     # Perform necessary logic to create a drop for the book
#   end

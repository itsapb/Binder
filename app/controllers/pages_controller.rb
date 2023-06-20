class PagesController < ApplicationController
  def home
    @users = User.all
    @book_temp = BookTemp.last
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { user: }),
        marker_html: render_to_string(partial: "marker", locals: { user: })
      }
    end
  end

  def dashboard
    if user_signed_in?
      @books = current_user.books
      # my booking requests
      @drops = current_user.drops
      @booking_requests = current_user.books.map(&:drops).flatten
      # client = Goodreads.new(api_key: ENV['GOODREADS_API_KEY'])
      # @books = client.listopia("interesting")

      @droppable_books = Book.where(droppable: true)
      @currently_reading = current_user.books.where(currently_reading: true)
      # @borrowed_books = current_user.books.where(borrowed: true)
      @read_books = current_user.books.where(have_read: true)
    end
  end

  def create
    Book.find(params[:book_id])
    # Perform necessary logic to create a drop for the book
  end
end

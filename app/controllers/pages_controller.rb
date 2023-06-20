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
      @books = current_user.books.distinct
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

  def inspire
    @book_quotes =[
      "'Not all those who wander are lost.'
      — J.R.R. Tolkien, The Fellowship of the Ring",
      "'Beware; for I am fearless, and therefore powerful.' — Mary Shelley, Frankenstein",
      "'I took a deep breath and listened to the old brag of my heart: I am, I am, I am.' — Sylvia Plath, The Bell Jar",
      "'Love is or it ain’t. Thin love ain’t love at all.' — Toni Morrison, Beloved",
      "'Procrastination is the thief of time, collar him.' — Charles Dickens, David Copperfield",
      "'If you can concentrate always on the present, you'll be a happy man.'
      – Paulo Coelho, The Alchemist",
      "'Isn’t it nice to think that tomorrow is a new day with no mistakes in it yet?'
      - L.M. Montgomery, Anne of Green Gables",
      "'Today a reader, tomorrow a leader.' – Margaret Fuller",
      "'A word after a word after a word is power.' – Margaret Atwood",
      "'Books are a uniquely portable magic.' – Stephen King",
      "Everything was beautiful, and nothing hurt. - Kurt Vonnegut, Slaughterhouse-Five",
      "'There is always something left to love.' - Gabriel García Márquez, One Hundred Years of Solitude",
      "'Anything worth dying for is certainly worth living for.' - Joseph Heller, Catch-22",
      "'Time moves slowly, but passes quickly.' - Alice Walker, The Color Purple",
      "'When I discover who I am, I'll be free.' - Ralph Ellison, Invisible Man",
    ]
    @book_quote = @book_quotes.sample
  end
end

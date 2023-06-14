class BooksController < ApplicationController

  def index
    @books = Book.all
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {user: user}),
        marker_html: render_to_string(partial: "marker", locals: {user: user})
      }
    end
  end

<<<<<<< HEAD
def new
  @book = Book.new
end

def create
  @book = Book.new(book_params)
  if @book.save
    redirect_to book_path(@book)
  else
    render 'new'
  end
end
=======
  def create
    @book = Book.new(book_params)
    @book.save

    redirect_to book_path(@book)
  end
>>>>>>> master

def edit
  @book = Book.find(params[:id])
end

def update
  @book = Book.find(params[:id])
  @book.update(book_params)

  redirect_to book_path(@book)
end

def destroy
  @book = Book.find(params[:id])
  @book.destroy

  redirect_to books_path, status: :see_other
end

private

def book_params
  params.require(:book).permit(:title, :author, :description)
end
end

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def search
  end
  # For getting info from user about which book they want to view
  def new
    @book = Book.new
  end

  # For displaying API search results

  def show
    @book = Book.find(params[:id])
  end

  def currently_reading
    @book = Book.find(params[:id])
    @book.currently_reading = true
    @book.save
    redirect_to dashboard_path
  end

  def not_reading
    @book = Book.find(params[:id])
    @book.currently_reading = false
    @book.save
    redirect_to dashboard_path
  end

  def have_read
    @book = Book.find(params[:id])
    @book.have_read = true
    @book.save
    redirect_to dashboard_path
  end

  def unread
    @book = Book.find(params[:id])
    @book.have_read = false
    @book.save
    redirect_to dashboard_path
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

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

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.save

    redirect_to book_path(@book)
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

    redirect_to book_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description)
  end
end

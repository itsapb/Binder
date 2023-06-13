class BooksController < ApplicationController
end

def index
  @books = Book.all
end

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

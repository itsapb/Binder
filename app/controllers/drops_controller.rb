class DropsController < ApplicationController

  def index
    @user = current_user
  end

  def create
    @user = current_user
    @book = Book.find(params[:book_id])
    @drop = Drop.new(user_id: @user.id, book_id: @book.id)

    if @drop.save
      redirect_to root_path, notice: "Booking requested."
    else
      redirect_to root_path, alert: "Booking could not be created."
    end
  end

  def new
    @book = Book.find(params[:book_id])
    @drop = Drop.new
  end

  def delete
  end
end

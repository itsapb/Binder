class DropsController < ApplicationController

  def index
    @user = current_user
  end

  def accept_drop
    @drop = Drop.find(params[:id])
    @drop.status = true
    @drop.save
    redirect_to dashboard_path
  end

  def decline_drop
    @drop = Drop.find(params[:id])
    @user = @drop.user.first_name
    @drop.status = false
    @drop.save
    redirect_to dashboard_path, notice: "Booking declined from #{@user}!"
  end

  def delete_drop
    @drop = Drop.find(params[:id])
    @user = @drop.user.first_name
    @drop.destroy
    redirect_to dashboard_path, notice: "You deleted your booking request!"
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
end

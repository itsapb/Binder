class DropsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @booking = @book.bookings.build(user_id: current_user.id)
    if @booking.save
      redirect_to root_path, notice: "Booking created successfully."
    else
      redirect_to root_path, alert: "Booking could not be created."
    end
  end
end

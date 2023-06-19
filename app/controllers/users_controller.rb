class UsersController < ApplicationController
  def index
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { user: }),
        marker_html: render_to_string(partial: "marker", locals: { user: })
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @drops = @user.drops

    @droppable_books = @books.where(droppable: true)
    @currently_reading = @books.where(currently_reading: true)
      # @borrowed_books = current_user.books.where(borrowed: true)
    @read_books = @user.books.where(have_read: true)
  end

end

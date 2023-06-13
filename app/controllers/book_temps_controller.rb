class BookTempsController < ApplicationController

  def index
    @book_temps = BookTemp.all
  end

  def show
    @book_temp = BookTemp.find(params[:id])
  end

  def new
    @book_temp = BookTemp.new
  end

  def create
    @book_temp = BookTemp.new(params_booktemp)
    @book_temp.user = current_user
    if @book_temp.save
      redirect_to book_temps_path
    else
      render "book_temps/show", status: :unprocessable_entity
    end
  end

  private

  def params_booktemp
    params.require(:book_temp).permit(:title, :author, :description, :ISBN)
  end
end

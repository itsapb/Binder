class BookTempsController < ApplicationController
  def index
    if params[:query].present?
      @book_temps = BookTemp.search_by_title_and_author(params[:query])
    else
      @book_temps = BookTemp.all
    end
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

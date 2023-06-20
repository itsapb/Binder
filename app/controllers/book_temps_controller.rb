class BookTempsController < ApplicationController
  def index
    @book_temps = BookTemp.all
  end

  def show
    @book_temp = BookTemp.find(params[:id])
  end
end

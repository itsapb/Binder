class ReviewsController < ApplicationController
  def create
    @book_temp = BookTemp.find(params[:book_temp_id])
    # @book = @book_temp.books.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book_temp = @book_temp
    @review.user = current_user
    if @review.save
      redirect_to root_path
    else
      render "books/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to root_path, notice: "Review has been deleted!"
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

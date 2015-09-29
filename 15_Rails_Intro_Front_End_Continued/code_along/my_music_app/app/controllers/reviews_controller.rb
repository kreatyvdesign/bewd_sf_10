class ReviewsController < ApplicationController
  def create
    @artist = Artist.find(params[:artist_id])
    @review = @artist.reviews.create(review_params)
    redirect_to artist_path(@artist)
  end

  private
    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end

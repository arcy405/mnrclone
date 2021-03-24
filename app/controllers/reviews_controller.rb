class ReviewsController < ApplicationController

    def create
    	@list=Listing.find(4)
        @review = @list.reviews.new(review_params)

      respond_to do |format|
      if @review.save
        format.html { redirect_to listing_path(@review.listing, anchor: 'comment-section'), notice: 'Comment was successfully created.' }
      end
    end
    end

    private

    def review_params
      params.require(:review).permit(:name, :comment, :rating,:listing_id)
    end
end

class CommentsController < ApplicationController
    before_action :find_commentable

    def new
      @comment = Comment.new
    end
    def show
    
    end

    def create
      @comment = @commentable.comments.new comment_params
        if @comment.save
          redirect_back(fallback_location: details_show_path) 
        end
    end

    private

    def comment_params
      params.require(:comment).permit(:name, :body)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Listing.find_by_id(params[:listing_id]) if params[:listing_id]
    end
end

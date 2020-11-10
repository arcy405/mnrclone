class CommentsController < ApplicationController
    before_action :find_commentable

    def new
      @comment = Comment.new
    end
    def create
      @comment = @commentable.comments.new comment_params

      respond_to do |format|
        if @comment.save
          format.html { redirect_to @comment, notice: 'comment was successfully added' }
          format.js 
        end
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:name, :body, :rating)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Listing.find_by_id(params[:listing_id]) if params[:listing_id]
    end
end

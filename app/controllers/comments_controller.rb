class CommentsController < ApplicationController

    def new
      @comment = Comment.new
    end
    def create
      @comment = Comment.new(comment_params)
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
end

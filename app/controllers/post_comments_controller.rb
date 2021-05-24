class PostCommentsController < ApplicationController
    def create
        @post=Post.find(params[:post_id])
        @post_comment = @post.post_comments.new(post_comment)
    
       respond_to do |format|
          if @post_comment.save
              format.js
          end
        end
      end

      private
      # Only allow a list of trusted parameters through.
      def post_comment
        params.require(:post_comment).permit(:comment,:user_id,:post_id)
      end
end

class PostsController < ApplicationController

    before_action :set_posts, only: [:edit, :update, :destroy]

    def index
        @posts=Post.includes(:post_comments).order("updated_at DESC")
        @post_categories = PostCategory.order(:name)
        @comments=PostComment.all
        if user_signed_in?
            @post=current_user.posts.build
            @comment=PostComment.new
        end
    end

    def create
        @post = current_user.posts.new(post_params)
    
       respond_to do |format|
        if  @post.save
              if user_signed_in?
                current_user.gamification.create!(points:5)
              end
              format.html { redirect_to posts_path, notice: 'Post was successfully created.' }
          else
            format.html { render :index }
          end
        end
    end

    def edit
      @post = Post.find(params[:id])
    end

    def update
      @post = Post.find(params[:id])
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to posts_path, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
    end
  end


    def upvote
        @post = Post.find(params[:id])
        
        respond_to do |format|
          if @post.upvote_from current_user
            format.js
          end
        end
    end

    def downvote
        @post = Post.find(params[:id])
        
        respond_to do |format|
          if @post.downvote_from current_user
            format.js
          end
        end
       
    end

      private

      def set_posts
        @post = Post.find(params[:id])
      end
      # Only allow a list of trusted parameters through.
      def post_params
        params.require(:post).permit(:content, :images,:user_id,:post_category_id)
      end

end

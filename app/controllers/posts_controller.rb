class PostsController < ApplicationController

    before_action :set_posts, only: [:edit, :update, :destroy]

    def index
        @posts=Post.includes(:post_comments).order("updated_at DESC")

        if user_signed_in?
            @profile_post_count= User.joins(:posts).where("user_id=?",current_user.id).count
            @post=current_user.posts.build
            @post_image = @post.post_images.build
            @comment=PostComment.new
        end
    end

    def create
        @post = current_user.posts.new(post_params)
    
       respond_to do |format|
        if  @post.save
            if params[:post_images]
              params[:post_images]['image'].each do |a|
                    @marketplace_image = @post.post_images.create!(:image => a, :post_id => @post.id)
              end
            end

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

    def follow
      @user = User.find(params[:id])
      respond_to do |format|
          if current_user.follow(@user)
            format.js
          end
        end
    end
    def unfollow
      @user = User.find(params[:id])
      respond_to do |format|
          if current_user.stop_following(@user)
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
        params.require(:post).permit(:content, :images,:user_id,post_images_attributes: [:id, :post_id, :image, :image_cache])
      end

end

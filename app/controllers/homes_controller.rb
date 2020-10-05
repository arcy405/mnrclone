class HomesController < ApplicationController
  def index
    @tags=Tag.all
    #@list_counts=Directory.group(:tag).count
  end

  def show
    category=params[:category]
    @lists=Directory.all.joins(:tag).where(tags: { title: category })
  end
end

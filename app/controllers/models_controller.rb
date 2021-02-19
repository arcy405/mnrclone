class ModelsController < ApplicationController

	def index
		@models=Model.all
	end

	def new
		@model=Model.new
		@gallery=@model.gallery.build
	end

	def show
	end

	def create
		@model=Model.new(models_params)

	     if @model.save
		     params[:gallery]['image'].each do |a|
          		@gallery = @model.gallery.create!(:image => a)
       		 end
		      redirect_to modles_path
		    else
		      redirect_to models_new_path, alert: "Error creating model."
	    end

	end

	private
	def models_params
		params.require(:model).permit(:name,:dob,:gender,:ethnicity, gallery_attributes:[:image])
	end

end

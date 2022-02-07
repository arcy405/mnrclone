class ModelsController < ApplicationController
	def index
		district = params[:district] || ("Baitadi, Kanchanpur")
		@models=Model.order(:name).where("district=?", district).includes(:galleries)
	end
	def show
		@model=Model.friendly.find(params[:id])
	end
end

class ModelsController < ApplicationController
	def index
		district = params[:district]
		if params[:district] == "Kanchanpur"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		elsif params[:district] == "Baitadi"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		elsif params[:district] == "Kailali"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		elsif params[:district] == "Kailali"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		elsif params[:district] == "Dadeldhura"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		elsif params[:district] == "Darchula"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		elsif params[:district] == "Bajhang"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		elsif params[:district] == "Doti"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		elsif params[:district] == "Achham"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		elsif params[:district] == "Bajura"
			@models=Model.order(:name).where(district: district).includes(:galleries).all
		else	
		@models=Model.order(:name).includes(:galleries).all
		end
	end
	def show
		@model=Model.find(params[:id])
	end

end

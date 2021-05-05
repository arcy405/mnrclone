class ModelsController < ApplicationController
	def index
		@models=Model.order(:name)
	end
	def show
		@model=Model.friendly.find(params[:id])
	end
end

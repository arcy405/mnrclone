class ModelsController < ApplicationController
	def index
		@models=Model.all
	end
	def show
		@model=Model.friendly.find(params[:id])
	end
end

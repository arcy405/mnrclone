class ModelsController < ApplicationController
	def index
		@models=Model.order(:name)
		@ethnicity=Model.distinct.pluck(:ethnicity)
	end
	def show
		@model=Model.friendly.find(params[:id])
		@ethnicity=Model.distinct.pluck(:ethnicity)
	end
end

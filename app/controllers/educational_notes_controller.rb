class EducationalNotesController < ApplicationController

	def index
		
	end

	def notes_index
		@release_assets = Note.last
	end

	def notes_show
		@release_assets = Note.last
	end

end

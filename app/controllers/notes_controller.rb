class NotesController < ApplicationController
	def index
		@universities = University.order(:name)
		@semesters = UniversitySemester.order(:name)
	end

	def notes_index
		@subjects = Note.joins(:university).where(universities:{name:params[:uni]}).joins(:department).where(departments:{name:params[:dept]}).joins(:university_semester).where(university_semesters:{name:params[:sem]}).pluck(:subject_name)
	end

	def notes_show
		
		@chapters = Note.joins(:university).where(universities:{name:params[:uni]}).joins(:department).where(departments:{name:params[:dept]}).joins(:university_semester).where(university_semesters:{name:params[:sem]}).where("subject_name=?",params[:sub])
	end
end

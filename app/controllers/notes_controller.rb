class NotesController < ApplicationController
	def index
		@universities = University.includes(:university_departments)
		@semesters = UniversitySemester.order(:name).includes(:subjects)
	end

	def notes_index
		headers = {'Authorization':'token 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'} 
		url = "https://api.github.com/repos/Naren404/MNRYP_notes/contents/#{params[:uni]}/#{params[:dept]}/#{params[:sub_dept]}/#{params[:sem]}/#{params[:sub]}"
		response = HTTParty.get(url,headers: headers)

		result = response.parsed_response 

		@chapters = result
	end

	def notes_show
		
	end

	def notes_download
		require "open-uri"
		url=params[:download_url]
    	send_file(URI.open(url),
    	:filename => params[:filename],
      	:type => 'application/pdf/docx/html/htm/doc',
      	:disposition => 'attachment')  
	end

	def syllabus_index
		headers = {'Authorization':'token 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'} 
		url = "https://api.github.com/repos/Naren404/MNRYP_notes/contents/#{params[:uni]}/#{params[:dept]}/#{params[:sub_dept]}/#{params[:sem]}/#{params[:sub]}/#{params[:syllabus]}"
		response = HTTParty.get(url,headers: headers)

		result = response.parsed_response 

		@syllabus  = result
	end 
end

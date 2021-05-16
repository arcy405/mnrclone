class NotesController < ApplicationController
	def index
		@universities = University.order(:name)
		@semesters = UniversitySemester.order(:name)
	end

	def notes_index
		headers = {'Authorization':'token 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'} 
		url = "https://api.github.com/repos/Naren404/MNRYP_notes/contents/#{params[:uni]}/#{params[:dept]}/#{params[:sem]}"
		response = HTTParty.get(url,headers: headers)

		result = response.parsed_response 

		@subjects = result
	end

	def notes_show
		headers = {'Authorization':'token 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'} 
		url = "https://api.github.com/repos/Naren404/MNRYP_notes/contents/#{params[:uni]}/#{params[:dept]}/#{params[:sem]}/#{params[:sub]}"
		response = HTTParty.get(url,headers: headers)

		result = response.parsed_response 

		@chapters = result
	end

	def notes_download
		require "open-uri"
		url=params[:download_url]
    	send_file(URI.open(url),
    	:filename => params[:filename],
      	:type => 'application/pdf/docx/html/htm/doc',
      	:disposition => 'attachment')  
	end
end

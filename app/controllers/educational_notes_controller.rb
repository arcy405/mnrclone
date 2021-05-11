class EducationalNotesController < ApplicationController

	def index
		
	end

	def notes_index
		@release_assets = Note.last

		#manipulating the json file of github release api
        notes_api = JSON.parse(@release_assets.asset_url.gsub(/=>/,":"))

        @notes_subject=[] 

        notes_api[0]['assets'].each do |note|
        	
        	university= note['name'].to_s.split("_")[0]
        	department = note['name'].to_s.split("_")[1]
        	semester = note['name'].to_s.split("_")[2]
        	subjects = note['name'].to_s.split("_")[3]

        	requested_uni=params[:uni]
        	requested_dept=params[:dept]
        	requested_sem=params[:sem]
        	if university == requested_uni && department == requested_dept && semester ==  requested_sem
        		@notes_subject.push(subjects) unless @notes_subject.include?(subjects)
        	end
        end
	end

	def notes_show
		@release_assets = Note.last

		#manipulating the json file of github release api
		notes_api = JSON.parse(@release_assets.asset_url.gsub(/=>/,":"))

		@notes_chapters=[] 
		@notes_download_link=[] 

			notes_api[0]['assets'].each do |note|
			university= note['name'].to_s.split("_")[0]
			department = note['name'].to_s.split("_")[1]
			semester = note['name'].to_s.split("_")[2]
			subject = "microeconomics"

			chapters = note['name'].to_s.split("_")[4]

			requested_uni=params[:uni]
			requested_dept=params[:dept]
			requested_sem=params[:sem]
			requested_sub=params[:sub]

			if university == requested_uni && department == requested_dept && semester ==  requested_sem && subject ==  requested_sub
				@notes_download_link.push(note['browser_download_url'])
				@notes_chapters.push(chapters) 
			end
        end

	end

end

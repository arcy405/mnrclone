class NoteApi < ApplicationRecord

	def self.create_url
		url = "https://api.github.com/repos/FarWesternUniveristy/notes/releases"
		response = HTTParty.get(url)
		result = response.parsed_response
		note_api=NoteApi.new
		note_api.asset_url = result[0]['assets']
	end
end

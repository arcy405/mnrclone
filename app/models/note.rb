class Note < ApplicationRecord
	def self.create_url
		url = "https://api.github.com/repos/FarWesternUniveristy/notes/releases"
		response = HTTParty.get(url)
		result = response.parsed_response
		note=Note.new(asset_url:"#{result[0]['assets']}")
		note.save
	end
end

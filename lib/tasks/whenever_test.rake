desc 'Whenever rake task test'
task whenever_call: :environment do
  url = "https://api.github.com/repos/FarWesternUniveristy/notes/releases"
		response = HTTParty.get(url)
		result = response.parsed_response
		note=Note.new(asset_url:"#{result}")
		note.save
end
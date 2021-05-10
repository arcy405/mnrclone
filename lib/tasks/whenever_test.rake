
desc 'Whenever rake task test'
task whenever_call: :environment do
	headers = {'Authorization':'token 1445782a547a831fc96f8723746d7bf6f65812ac'} 

 	url = "https://api.github.com/repos/FarWesternUniveristy/MNRYP_notes/releases"
	response = HTTParty.get(url,headers: headers)

	result = response.parsed_response 

	note=Note.new(asset_url:"#{result.to_s}")
	note.save
	
end
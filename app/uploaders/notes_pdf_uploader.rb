class NotesPdfUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :eager => true
  process :pages =>true
  process :tags => ['notes_pdf']
  process :usefilename =>true
  def public_id
    pubid=model.id.to_s + rand(1..9999999999).to_s
    return "MNRYP_Notes/" + pubid
  end  
end

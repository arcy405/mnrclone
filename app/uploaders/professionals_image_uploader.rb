class ProfessionalsImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['professionals_image']
  process :usefilename =>true
  def public_id
    pubid=model.name.to_s + rand(1..99999).to_s
    return "Professionals/" + pubid
  end 
end

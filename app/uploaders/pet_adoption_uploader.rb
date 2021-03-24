class PetAdoptionUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['model_picture']
  process :usefilename =>true
  def public_id
    pubid=model.pet_name + rand(1..99999).to_s
    return "Pets/" + pubid
  end 
end

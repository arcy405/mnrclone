class ModelUploader < CarrierWave::Uploader::Base
   include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['model_picture']
  process :usefilename =>true
  def public_id
    pubid=model.model.name + rand(1..9999999999).to_s
    return "Models/" + pubid
  end  
end

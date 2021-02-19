class ModelUploader < CarrierWave::Uploader::Base
   include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['model_picture']
  def public_id
    pubid=model.model.name
    return "Models/" + pubid
  end  
end

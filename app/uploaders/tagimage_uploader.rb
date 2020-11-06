class TagimageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['tag_picture']
  def public_id
    return "Tags/" + model.title
  end  
end

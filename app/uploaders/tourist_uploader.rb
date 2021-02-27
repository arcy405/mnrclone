class TouristUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['tag_picture']
  def public_id
    return "Touristplaces/" + model.place_name
  end  
end

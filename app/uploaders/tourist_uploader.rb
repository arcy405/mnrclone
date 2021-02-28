class TouristUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['tag_picture']
  def public_id
    name= model.tourist.place_name[0..8].gsub(/\s\w+$/,'')
    return "Touristplaces/" + name + rand(0...9999999999).to_s
  end  
end

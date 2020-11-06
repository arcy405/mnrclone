class ListingimageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['listing_picture']
  def public_id
    return "Listing/" + model.name
  end  
end

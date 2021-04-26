class ListingimageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['listing_picture']
  def public_id
    splitname=model.name
    pubid=splitname.split
    pubid=pubid[0]
    return "Listing/" + pubid + rand(1...99999).to_s
  end  
end

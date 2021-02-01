class RealestateimageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  
  process :convert => 'png'
  process :eager => true
  process :tags => ['realestates_photo']
  def public_id
    splitname=model.seller_name
    pubid=splitname.split
    pubid=pubid[0]
    return "Property/" + pubid
  end  
end

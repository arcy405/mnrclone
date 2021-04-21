class MarketplaceUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['model_picture']
  process :usefilename =>true
  def public_id
    pubid=model.prod_name + rand(1..99999).to_s
    return "Products/" + pubid
  end 
end

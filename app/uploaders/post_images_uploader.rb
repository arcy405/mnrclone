class PostImagesUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['post_picture']
  process :usefilename =>true
  def public_id
    pubid=model.id.to_s + rand(1..99999).to_s
    return "MNRForum/" + pubid
  end 
end

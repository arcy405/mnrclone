class UserImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :convert => 'png'
  process :eager => true
  process :tags => ['user_picture']
  def public_id
    pubid=model.id.to_s +  rand(1...99999).to_s
    return "UsersProfile/" + pubid 
  end 
end

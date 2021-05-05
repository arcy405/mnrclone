class ProjectUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  
  process :convert => 'png'
  process :eager => true
  process :tags => ['project_photo']
  def public_id
    pubid=model.id.to_s + rand(1..99999).to_s
    return "Nepaila/" + pubid
  end  
end

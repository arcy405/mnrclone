class RenamePhotoToImageRealstates < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :realestates, :photo, :image
  end

  def self.down
  end
end

class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  acts_as_votable

  has_many :post_images,dependent: :destroy
  accepts_nested_attributes_for :post_images, :reject_if => proc {|attributes| attributes['image'].blank? && attributes['image_cache'].blank?}

end

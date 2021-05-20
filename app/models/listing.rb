class Listing < ApplicationRecord

	include ActiveModel::Validations

  mount_uploader :image, ListingimageUploader
  
  belongs_to :tag, counter_cache: true
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address, :owner, :phone,:tag_id,:description
  validates_numericality_of :phone
  validates_length_of :phone, is: 10



  include AlgoliaSearch
  algoliasearch auto_index: true do
    attribute :name, :id
    searchableAttributes ['name']
  end
end

class Listing < ApplicationRecord

  mount_uploader :image, ListingimageUploader
  belongs_to :tag, counter_cache: true
  has_many :comments, as: :commentable

  extend FriendlyId
  	friendly_id :name, use: :slugged

  include AlgoliaSearch
  algoliasearch auto_index: true do
    attribute :name
    searchableAttributes ['name']
  end
end

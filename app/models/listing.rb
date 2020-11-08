class Listing < ApplicationRecord

  after_initialize :set_default_lonlat
      def set_default_lonlat
        self.longitude ||='80.179249'
        self.lattitude ||='28.963836'
      end

  mount_uploader :image, ListingimageUploader
  belongs_to :tag, counter_cache: true
  has_many :comments, as: :commentable

  

  include AlgoliaSearch
  algoliasearch auto_index: true do
    attribute :name
    searchableAttributes ['name']
  end
end

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :post_category

  has_many :post_comments, dependent: :destroy
  acts_as_votable
end

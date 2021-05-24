class PostComment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  include ActiveModel::Validations

  validates_presence_of :comment

end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :gamification, dependent: :destroy
  has_many :donors, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :poll_votes

  mount_uploader :image, UserImageUploader

  acts_as_voter

  acts_as_followable
  acts_as_follower

   include SimpleDiscussion::ForumUser

  devise :omniauthable, :omniauth_providers => [:facebook]

  devise :database_authenticatable,:recoverable, :rememberable, :validatable, :registerable
  
  def self.from_omniauth(auth)
    name_split = auth.info.name.split(" ")
    user = User.where(email: auth.info.email).first
    user ||= User.create!(provider: auth.provider, uid: auth.uid, lastName: name_split[0], firstName: name_split[1], email: auth.info.email, password: Devise.friendly_token[0, 20])
      user
  end

  def user_name
        "#{name} #{email}"
  end

end

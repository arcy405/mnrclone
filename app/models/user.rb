class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :image
  has_many :gamification, dependent: :destroy
  has_many :donors, dependent: :destroy

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

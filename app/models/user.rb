require 'open-uri'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :spots, through: :reviews
  has_many :followers_as_asker, class_name: "Follower", foreign_key: :asker_id
  has_many :followers_as_receiver, class_name: "Follower", foreign_key: :receiver_id
  has_many :followers, through: :followers_as_receiver, source: :asker
  has_many :followings, through: :followers_as_asker, source: :receiver
  has_one_attached :photo

  after_create_commit :set_default_photo, unless: -> { photo.attached? }

  private

  def set_default_photo
    default_image_url = "https://res.cloudinary.com/dmilkgxzg/image/upload/v1733322510/Default_pfp_h5cgpc.jpg"
    io = URI.open(default_image_url)
    self.photo.attach(io: io, filename: 'default_profile_picture.jpg', content_type: 'image/jpg')
  end
end

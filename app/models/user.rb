class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :followers_as_asker, class_name: "Follower", foreign_key: :asker_id
  has_many :followers_as_receiver, class_name: "Follower", foreign_key: :receiver_id
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :spots, through: :reviews
  has_many :followers_as_asker, class_name: "Follower", foreign_key: :asker_id
  has_many :followers_as_receiver, class_name: "Follower", foreign_key: :receiver_id
  has_many :followings, through: :followers_as_receiver, source: :asker
  has_many :followers, through: :followers_as_asker, source: :receiver
  has_one_attached :photo

  def following?(other_user)
    # Check if there is a record in the followers table where the current user is following the other user
    Follower.exists?(asker: self, receiver: other_user)
  end
end

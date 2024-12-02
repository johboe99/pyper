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
  
  def follow(other_user)
    followers_as_asker.create(receiver: other_user)
  end

  # Unfollow a user
  def unfollow(other_user)
    followers_as_asker.find_by(receiver: other_user).destroy
  end

  # Check if the current user is following another user
  def following?(other_user)
    followings.include?(other_user)
  end
end

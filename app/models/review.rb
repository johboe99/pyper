class Review < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  has_many :reviews_tags
  has_many :tags, through: :reviews_tags

end

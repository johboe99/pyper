class Spot < ApplicationRecord
  belongs_to :category
  has_many :reviews

  has_one_attached :photo
end

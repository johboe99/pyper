class Spot < ApplicationRecord
  belongs_to :category
  has_many :reviews

  has_one_attached :photo
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

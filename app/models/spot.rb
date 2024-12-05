class Spot < ApplicationRecord
  belongs_to :category
  has_many :reviews

  has_one_attached :photo
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :opening_hours, presence: true

  after_create_commit :set_default_photo, unless: -> { photo.attached? }

  def average_rating
    if self.reviews.count > 0
      self.reviews.sum(:rating).to_f / self.reviews.count
    else
      0
    end
  end

  private

  def set_default_photo
    default_image_url = "https://res.cloudinary.com/dmilkgxzg/image/upload/v1733389604/default_spot_c80est.jpg"
    io = URI.open(default_image_url)
    self.photo.attach(io: io, filename: 'default_profile_picture.jpg', content_type: 'image/jpg')
  end
end


# new method inside spot model
# only if reviews > 0
# self.reviews to get all ratings and then iterate
# calculate average
# if count = 0 show something else --> average = "no reviews"
# could also directly implement the stars as method
# stars method calls on average method

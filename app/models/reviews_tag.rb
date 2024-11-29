class ReviewsTag < ApplicationRecord
  belongs_to :tag
  belongs_to :review
end

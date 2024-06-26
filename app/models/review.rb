class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = [0, 1, 2, 3, 4, 5]
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5 }
  validates :rating, inclusion: { in: RATING }
end

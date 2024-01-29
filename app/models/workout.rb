class Workout < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :date, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 240 }

  belongs_to :user
end

# numericality: { in: 0..240 }
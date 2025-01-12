class Student < ApplicationRecord
  has_many :ducks
  validates :name, presence: true
  # validates :mod, {maximum: 5}
  validates :mod, numericality: { less_than_or_equal_to: 5 ,  only_integer: true }
  validates :mod, numericality: {greater_than_or_equal_to: 1, only_integer: true}
end

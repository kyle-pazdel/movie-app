class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, length: { is: 4 }
  validates :director, presence: true
end

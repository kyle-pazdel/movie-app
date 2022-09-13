class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, length: { is: 4 }
  validates :director, presence: true
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    movie = Movie.find_by(id: id)
    genre_list = movie.genres
    genre_array = genre_list.map { |genre| genre[:name] }
  end
end

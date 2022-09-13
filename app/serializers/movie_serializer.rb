class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :director, :genre

  has_many :genres
end

class Movie < ApplicationRecord
    validates :title, presence: true
    validates :title, length: { in: 2..100}
    validates :year, presence: true
    validates :year, numericality: {greater_than: 1800 }
    has_many :actors
    has_many :movie_genres

end

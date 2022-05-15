class Movie < ApplicationRecord
    validates :title, presence: true
    validates :title, length: { in: 2..100}
    validates :known_for, presence: true
    validates :known_for, length { in: 10..300}
    validates :year, presence: true
    validates :year, numericality: {greater_than: 1800 }
end

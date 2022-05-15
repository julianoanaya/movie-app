class Actor < ApplicationRecord
    validates :first_name, presence: true
    validates :first_name, length: { in: 2..100}
    validates :last_name, presence: true
    validates :last_name, length: { in: 2..100}
    validates :known_for, presence: true
    validates :age, numericality: {greater_than: 13 }
end

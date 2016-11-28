class Review < ApplicationRecord
	belongs_to :critic
	belongs_to :movie
	validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
end

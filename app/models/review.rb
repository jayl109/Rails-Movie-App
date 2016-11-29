class Review < ApplicationRecord
	belongs_to :viewer, optional: true
	belongs_to :movie
	belongs_to :critic, optional: true
	validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
end

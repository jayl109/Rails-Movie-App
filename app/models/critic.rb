class Critic < ApplicationRecord
	has_and_belongs_to_many :viewers
	has_many :reviews
end

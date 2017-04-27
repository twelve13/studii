class Board < ApplicationRecord
	has_many :listings
	has_many :posts, through: :listings
	validates :title, {presence: true}
end
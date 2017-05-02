class Board < ApplicationRecord
	belongs_to :user
	has_many :listings, dependent: :destroy
	has_many :posts, through: :listings
	validates :title, {presence: true}
end
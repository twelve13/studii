class Board < ApplicationRecord
	belongs_to :user
	has_many :listings, dependent: :destroy
	has_many :posts, through: :listings
	validates :title, {presence: true}
	# Great job utlizing many-to-many associations and validations
end

class Post < ApplicationRecord
	has_many :listings
	has_many :boards, through: :listings
	has_many :notes, dependent: :destroy
	validates :title, :url, {presence: true}
end
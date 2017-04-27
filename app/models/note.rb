class Note < ApplicationRecord
	belongs_to :post
	validates :body, {presence: true}
end
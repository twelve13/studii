class Listing < ApplicationRecord
	belongs_to :board
	belongs_to :post
end
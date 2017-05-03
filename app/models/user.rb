class User < ApplicationRecord
	has_many :boards
	
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end

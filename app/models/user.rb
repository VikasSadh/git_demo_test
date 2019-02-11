class User < ApplicationRecord
	has_many :posts 
	validates :name, :age, presence: true
end

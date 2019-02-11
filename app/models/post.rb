class Post < ApplicationRecord
	belongs_to :user


	def perform_task
		return true
	end
end

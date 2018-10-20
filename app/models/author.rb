class Author < ApplicationRecord

	scope :alphabetical, -> { order(last_name: :asc) }
	
	def full_name
		first_name + " " + last_name
	end

	def reverse_name
		last_name + ", " + first_name
	end	
end
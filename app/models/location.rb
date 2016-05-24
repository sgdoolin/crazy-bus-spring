class Location < ActiveRecord::Base

	geocoded_by :full_street_address
	after_validation :geocode #autofresh the coordinates

	def full_street_address
		"#{street_address}, #{city}, GA"
	end
end

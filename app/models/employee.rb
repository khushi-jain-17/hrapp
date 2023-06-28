class Employee < ApplicationRecord
	validates :fname, :lname, presence: true
	validates :email,presence: true,uniqueness: true
	validates :city, :state, :country, :pincode, :address, presence: true 

# def name
# 	"#{fname} #{lname}".strip
	
# end
# def address
# 	"#{address} #{city} #{sate} #{country} #{pincode}".strip
# end
end




+
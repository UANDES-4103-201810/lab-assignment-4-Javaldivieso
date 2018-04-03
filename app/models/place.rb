class Place < ApplicationRecord
	validates:name, length: { minimum: 20 }
	validates:capacity,numericality:{greater_than:0}
	validates:capacity, numericality: {only_integer:true}
	has_many :events
end

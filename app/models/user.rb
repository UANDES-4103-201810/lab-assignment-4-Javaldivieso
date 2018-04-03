class User < ApplicationRecord
	validates :phone, length: { in: 9..11 }
	validates :email, format: { with:/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
	validates :password, format: { with: /\A[a-zA-Z]+\z/}
	validates :password, length: {in: 9..12}
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets
end

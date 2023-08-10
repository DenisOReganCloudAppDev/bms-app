class Tenant < ApplicationRecord
	belongs_to :building
	has_many :maintenance_requests, dependent: :destroy
	validates:first_name, presence:true
	validates:last_name, presence:true
	validates:email, presence:true
	validates:apartment_no, presence:true
	validates:phone, presence:true
	validates:building, presence:true
end


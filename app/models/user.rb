class User < ActiveRecord::Base
  attr_accessible :Admin, :contact_email, :contact_phone, :name
  
  before_save :format_phone
  
  has_many :messages
  has_many :properties
  
phone_regex = /^\+?\d{11}|\+?\d{3}[-.]\d{4}[-.]\d{4}$/

validates :contact_email, :presence => true
validates :name, :presence => true
validates :contact_phone, :presence => true, :format => { :with => phone_regex, :message => "should be 11 digits (country code needed) and delimited with dashes" }



private
	def format_phone
		phone=self.phone.to_s
		phone.gsub!(/[^0-9]/, "")
		self.phone=phone
	end

end

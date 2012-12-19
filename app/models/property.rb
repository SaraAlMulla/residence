class Property < ActiveRecord::Base
  attr_accessible :internet_included, :manager_id, :number_of_bathrooms, :number_of_bedrooms, :number_of_rooms, :owner_id, :owner_name, :parking_allotment, :period_type, :price_per_period, :property_type, :purpose, :street_address
  
  
belongs_to :user

validates :manager_id, :presence => true
validates :owner_id, :presence => true
validates :owner_name, :presence => true
validates :property_type, :presence => true 
validates :period_type, :presence => true
validates :price_per_period, :presence => true


end

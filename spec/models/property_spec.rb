require 'spec_helper'

describe Property do
 it "should have the correct associations" do
	 should belong_to(:user)
	 
end


it "should validate the presence of manager_id" do
	should validate_presence_of :manager_id
end
it "should validate the presence of owner_id" do
	should validate_presence_of :owner_id
end
it "should validate the presence of owner_name" do
	should validate_presence_of :owner_name
end

it "should validate the presence of property_type" do
	should validate_presence_of :property_type
end

it "should validate the presence of period_type" do
	should validate_presence_of :period_type
end

it "should validate the presence of price_per_period" do
	should validate_presence_of :price_per_period
end

end

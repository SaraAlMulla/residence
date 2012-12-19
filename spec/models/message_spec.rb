require 'spec_helper'

describe Message do
 it "should have the correct associations" do
	 should belong_to(:user)
end

it "should validate the presence of date_read" do
	should validate_presence_of :date_read
end
it "should validate the presence of date_sent" do
	should validate_presence_of :date_sent
end
it "should validate the presence of receiver_id" do
	should validate_presence_of :receiver_id
end
it "should validate the presence of sender_id" do
	should validate_presence_of :sender_id
end
it "should validate the presence of subject" do
	should validate_presence_of :subject
	end
end

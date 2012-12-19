require 'spec_helper'

describe User do
it "has the appropriate association" do
		should have_many (:messages)
		should have_many (:properties)
	end
	
	before (:each) do
	
	@attr = {:name => "Sara",
			:contact_phone =>"97444833550",
			:contact_email => "sara@hotmail.com"
	}
	end
	
	describe "Validation Macros" do
  		it{ should validate_presence_of(:name)}
  		it{ should validate_presence_of(:contact_email)}
  		it{ should validate_presence_of(:contact_phone)}
  	end
  	
  	describe "Validating phone" do
  		
  		describe " The valid phones" do
 	 		it{ should allow_value("97444454862").for(:contact_phone)}
  	 		it{ should allow_value("974-4445-4862").for(:contact_phone)}
  	 		it{ should allow_value("974.4445.4862").for(:contact_phone)}

  	end
  		
  		describe "Invalid phones" do
 	    	it{ should_not allow_value("800-eat-food").for(:contact_phone)}

		end
 	end
end

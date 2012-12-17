require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'aboutUs'" do
    it "returns http success" do
      get 'aboutUs'
      response.should be_success
    end
  end

  describe "GET 'contactUs'" do
    it "returns http success" do
      get 'contactUs'
      response.should be_success
    end
  end

  describe "GET 'privacyPolicy'" do
    it "returns http success" do
      get 'privacyPolicy'
      response.should be_success
    end
  end

end

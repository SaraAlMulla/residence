require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Residence Qatalogue'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Residence Qatalogue')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "ResidenceQatalogue")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end



  describe "Contact page" do

    it "should have the h1 'Contact us'" do
      visit '/static_pages/contactUs'
      page.should have_selector('h1', :text => 'contact us')
    end

    it "should have the title 'ContactUs'" do
      visit '/static_pages/contactUs'
      page.should have_selector('title',
                        :text => "ResidenceQatalogue | Contact us")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "ResidenceQatalogue | About Us")
    end
  end
end
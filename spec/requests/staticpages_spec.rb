require 'spec_helper'

describe "Staticpages" do
  describe "Contact Page" do
    it "Should have the h1 'contact page'" do
      visit '/staticpages/contact'
      page.should have_selector('h1',
                                :text=>"contact")

      page.should have_selector('title',
                                :text=>"Ruby on Rails Tutorial Sample App | contact")
  end
end
end

describe "Staticpages" do
  describe "Home Page" do
    it "Should have the h1 'Sample App'" do
     visit '/staticpages/home'
     page.should have_selector('h1',
                               :text=>"Sample App")

      page.should have_selector('title',
                                 :text=>"Ruby on Rails Tutorial Sample App | Home")
    end
    end
  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/staticpages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/staticpages/help'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/staticpages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/staticpages/about'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end


end

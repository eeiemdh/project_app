require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject{page}
  describe "Home page" do
    before {visit root_path}

      page.should have_selector('h1', :text => 'Sample App')
      page.should have_selector('title', :text => "#{base_title} | Home")
      page.should_not have_selector('title', text: '| Home')
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end

 # describe "User pages" do
 #   subject { page }
 #   subject { page }
 #
 #   describe "profile page" do
 #     let(:user) { FactoryGirl.create(:user) }
 #     before { visit user_path(user) }
 #
 #     it { should have_selector('h1',    text: user.name) }
 #     it { should have_selector('title', text: user.name) }
 #   end
 #end


end
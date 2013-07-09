require 'spec_helper'

describe "Static pages" do

  subject { page }
  #let(:base_title) { "Ruby on Rails Tutorial Sample App | " }

  

  describe "Home page" do

    before { visit root_path } 

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  
  end

  describe "Help page" do
    before { visit help_path }
    test_page_title('Help')
  end

  describe "About page" do
    before { visit about_path } 
    test_page_title('About Us')
  end

  describe "Contact page" do
    before { visit contact_path } 
    test_page_title('Contact Us')
  end

  
  

end
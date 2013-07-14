require 'spec_helper'

describe "Static pages" do

  subject { page }
  #let(:base_title) { "Ruby on Rails Tutorial Sample App | " }

  

  describe "Home page" do

    before { visit root_path } 

    test_page_title('', 'Sample App')
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

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector('title', text: full_title('Help'))
    click_link "Contact"
    page.should have_selector('title', text: full_title('Contact Us'))
    click_link "Home"
    page.should have_selector('title', text: full_title(''))
    click_link "Sign up now!"
    page.should have_selector('title', text: full_title('Sign up'))
    click_link "sample app"
    page.should have_selector('title', text: full_title(''))
  end

end
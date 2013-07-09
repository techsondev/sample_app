require 'spec_helper'

describe "User Pages" do
  
  subject { page }

  describe "Signup Page" do
    before { visit signup_path }
    test_page_title('Sign up')
  end
end

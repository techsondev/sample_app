include ApplicationHelper

# def full_title(page_title)

# 	base_title = "Ruby on Rails Tutorial Sample App"
# 	if page_title.empty? 
# 		base_title 
# 	else
# 		"#{base_title} | #{page_title}"
# 	end
# end

def test_page_title(*args)
	header = args[0].to_s
	if args.size == 2
		header = args[1].to_s
	end
 	it { should have_selector('h1', text: header) }
    it { should have_selector('title', text: full_title(args[0])) }
end

def sign_in(user)
  visit signin_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  # Sign in when not using Capybara as well.
  cookies[:remember_token] = user.remember_token
end

def full_title(page_title)

	base_title = "Ruby on Rails Tutorial Sample App"
	if page_title.empty? 
		base_title 
	else
		"#{base_title} | #{page_title}"
	end
end


def test_page_title(page_title)
	it { should have_selector('h1', text: page_title) }
    it { should have_selector('title', text: full_title(page_title)) }
end
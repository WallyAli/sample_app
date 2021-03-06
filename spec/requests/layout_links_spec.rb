require 'spec_helper'

describe "LayoutLinks" do

	it "should have a Home page at '/'" do
		get '/'
		response.should have_selector('title', 
									 :content => "Home")
	end

	it "should have a Contact page at '/contact'" do
		get '/contact'
		response.should have_selector('title', 
									 :content => "Contact")
	end

	it "should have a About page at '/about'" do
		get '/about'
		response.should have_selector('title', 
									 :content => "About")
	end

	it "should have a Help page at '/help'" do
		get '/help'
		response.should have_selector('title', 
									 :content => "Help")
	end

	it "should have a signup page at '/signup'" do
		get '/signup'
		response.should have_selector('title', 
									   :content => "Sign up")
	end

	it "should have the right links on the layout" do
		get root_path
		response.should have_selector('title', :content => "Home")
		get about_path
		response.should have_selector('title', :content => "About")
		get contact_path
		response.should have_selector('title', :content => "Contact")
		get pages_home_path
		response.should have_selector('title', :content => "Home")
		get signup_path
		response.should have_selector('title', :content => "Sign up")
		response.should have_selector('a[href="/"]>img')

	end
end

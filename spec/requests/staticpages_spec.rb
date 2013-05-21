require 'spec_helper'

describe "Staticpages" do
 # describe "GET /staticpages" do
  #  it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
   #   get staticpages_index_path
    #  response.status.should be(200)
    #end
  #end

  describe "Home page" do
	it "should haves the content 'sample App'" do
	  visit '/static_pages/home'
	  page.should have_content('Sample App')
	end

	it "should haves the content 'sample App'" do
          visit '/static_pages/home'
	  page.should have_selector('title',
		:text => "Ruby on Rails Tutorial Sample App | Help")
        end

  end

	describe "help pages" do
		it "should has the content 'help me to fuck me'" do 
			visit '/static_pages/help'
			page.should have_content('help me to fuck me')
		end
		it "should has the content 'help me to fuck me'" do
                        visit '/static_pages/help'
                        page.should have_selector('title',
                		:text => "Ruby on Rails Tutorial Sample App | Help")
                end

	end
	
	

	describe "about page" do 
		it "should has the content 'about us'" do 
			visit '/static_pages/about'
			page.should have_content('About Us')
		end
		it "should has the content 'about us'" do
                        visit '/static_pages/about'
                        page.should have_selector('title',
                		:text => "Ruby on Rails Tutorial Sample App | Help")
                end

	end


end

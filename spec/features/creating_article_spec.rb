require 'rails_helper'

RSpec.feature "creating articles" do
  scenario "a user creates a new article" do
    #we want to visit root page
    visit "/"
    
    #click on new article link
    click_link "New Article"
    
    #fill in title
    fill_in "Title", with: "Creating a blog"
    #fill in body
    fill_in "Body", with: "Miriam ist he greatest absolutely!"
    
    #click button to create article
    click_button "Create Article"
    
    #"article has been created" message
    expect(page).to have_content("Article has been created")
    
    #article redirects to articles page
    expect(page.current_path).to eq(articles_path)
  end
end
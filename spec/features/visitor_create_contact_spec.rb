require "rails_helper"

feature "Contact creation" do 
  scenario "allows acees to contacts page" do
    visit '/contacts'
    expect(page).to have_content 'Contact Us!'
  end 
end
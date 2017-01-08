require 'rails_helper'

feature 'public page' do  
    scenario 'hello world message' do
        #Use capybara to auto complete forms and navigate   
        visit('/')
        expect(page).to have_content("InternetPlanBook.com")
    end
end  

RSpec.feature "public page", :type => :feature do
  scenario "test RSpec is working" do
    visit "/"
    click_button "Login/Signup"

    expect(page).to have_text("Welcome to the public page")
  end
end
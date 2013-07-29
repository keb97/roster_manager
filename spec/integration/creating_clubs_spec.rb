require 'spec_helper'

feature 'Creating clubs' do
  scenario "can create a club" do
    visit '/'
    click_link "Add new club"
    fill_in 'Name', :with => "Aston Villa"
    fill_in 'League', :with => "EPL"
    click_button "Create Club"
    page.should have_content('Club has been added.')
  end
end

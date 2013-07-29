require 'spec_helper'

feature "Editing Clubs" do
  scenario "Updating a club" do
    Factory(:club, :name => "Barcelona FC")
    visit "/"
    click_link "Barcelona FC"
    click_link "Edit Club"
    fill_in "Name", :with => "FC Barcelona"
    click_button "Update Club"
    page.should have_content("Club has been updated.")
  end
end

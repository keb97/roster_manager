require 'spec_helper'

feature "Creating Players" do
  before do
    Factory(:club, :name => "Sounders FC")
    visit '/'
    click_link "Sounders FC"
    click_link "Add Player"
  end

  scenario "Creating a player" do
    fill_in "Name", :with => "Brad Evans"
    click_button "Create Player"
    page.should have_content("Player has been added.")
  end
end


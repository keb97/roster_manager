require 'spec_helper'

feature "Editing players" do
  let!(:club) {Factory(:club)}
  let!(:player) {Factory(:player, :club => club)}

  before do
    visit '/'
    click_link club.name
    click_link player.name
    click_link "Edit Player"
  end

  scenario "Updating a player" do
    fill_in "Name", :with => "Brad Guzan"
    click_button "Update Player"
    page.should have_content "Player has been updated."
    within('#player h2') do
      page.should have_content("Brad Guzan")
    end
    page.should_not have_content player.name
  end
end

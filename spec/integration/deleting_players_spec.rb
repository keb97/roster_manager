require 'spec_helper'

feature 'Deleting players' do
  let!(:club) {Factory(:club)}
  let!(:player) {Factory(:player, :club => club)}

  before do
    visit '/'
    click_link club.name
    click_link player.name
  end

  scenario "Deleting a player" do
    click_link "Delete Player"
    page.should have_content("Player has been deleted.")
    page.current_url.should == club_url(club)
  end
end

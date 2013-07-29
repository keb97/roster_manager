require 'spec_helper'
feature "Viewing clubs" do
  scenario "Listing all clubs" do
    club = Factory.create(:club, :name => "FC Barcelona")
    visit '/'
    click_link 'FC Barcelona'
    page.current_url.should == club_url(club)
  end
end

require 'spec_helper'

feature "Viewing players" do
  before do
    chelsea = Factory(:club, :name => "Chelsea")
    Factory(:player, :club => chelsea,
            :name => "Petr Cech")

    arsenal = Factory(:club, :name => "Arsenal")
    Factory(:player, :club => arsenal,
            :name => "Theo Walcott")

    visit '/'
  end

  scenario "Viewing players for a given team" do
    click_link "Chelsea"
    page.should have_content("Petr Cech")
    page.should_not have_content("Theo Walcott")
  end
end


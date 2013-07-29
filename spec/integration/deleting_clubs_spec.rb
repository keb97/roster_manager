require 'spec_helper'

feature "Deleting projects" do
  scenario "Deleting a project" do
    Factory(:club, :name => "PSG")
    visit '/'
    click_link "PSG"
    click_link "Delete Club"
    page.should have_content("Club has been deleted.")

    visit "/"
    page.should_not have_content("PSG")
  end
end

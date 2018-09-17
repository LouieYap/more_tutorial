require "rails_helper"

RSpec.feature "User can create" do
  scenario "with valid attributes" do
    visit "/"
    click_link "New Project"
    fill_in "Name", with: "Louie"
    fill_in "Description", with: "Hansel"
    click_button "Create Project"
    expect(page).to have_content "Project has been created."
  end
end
require 'spec_helper'

describe "Viewing the list of users" do
  it "has proper page header" do
    visit '/users'
    expect(page).to have_content('All Users')
  end

  it "shows correct number of users" do
    visit '/users'
  end
  
end

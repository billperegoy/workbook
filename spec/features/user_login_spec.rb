require 'rails_helper'

describe "login process" do
  it ": user can login", js: true do
    visit '/'
    click_link('log in')
    expect(page).to have_content('Please Log In')
    fill_in "Username", with: 'sheep'
    fill_in "Password", with: 'password'
    #click_button('Log In')
    #expect(page).to have_content('My Dashboard')
  end
end

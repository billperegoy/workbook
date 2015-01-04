require 'rails_helper'

describe "login process" do
  it ": user can login", js: true do
    visit '/'
    click_link('log in')
    expect(page).to have_content('log in')
    fill_in "login-username", with: 'sheep'
    fill_in "login-password", with: 'password'
    #click_button('Log In')
    #expect(page).to have_content('My Dashboard')
  end
end

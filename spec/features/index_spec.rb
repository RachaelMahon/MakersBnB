require 'spec_helper'

feature "Homepage" do
  scenario "addresses are visible at homepage" do
    visit '/'
    expect(page).to have_content('address')
  end
end

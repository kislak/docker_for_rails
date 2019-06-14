require 'rails_helper'

RSpec.describe 'PageViews' do
  it "shows the number of page views" do
    visit '/welcome'
    expect(page.text).to match(/this page has been viewed [0-9]+ times?!/)
  end

  it 'is enhanced with js', js: true do
    visit '/welcome'
    expect(page).to have_text("ENHANCED!")
  end
end
require 'rails_helper'

describe "Terms and Conditions page" do
  it "shows info about t & c of events" do
    visit root_url
    click_on "Terms"

    expect(page).to have_content "TERMS"
  end
end

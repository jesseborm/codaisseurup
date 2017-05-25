require 'rails_helper'
# , "Capacity", "Food", "Drinks", "Starts at", "Ends at", "Location", "Category"

describe "Creating an event" do
  before  do
    login_as user
    visit events_path
    click_on "Add new event"
  end

  let(:user) { create :user }

  it "shows the create event form" do
    expect(page).to have_field "Name", "Decription"
    expect(page).to have_button "Save"
    # expect(page).to have_link("Save", href: new_event_path)
    click_on "Save"
  end

  it "validates form fields" do
  end

  it "saves event in database" do
    fill_in "Name", with: "Test Event"
    fill_in "Description", with: "Testing is so nice"
    select('50', :from => 'event_capacity')

  end



  it "takes you to the show event page" do
  end
end
#
# describe "event/new" do
#   it "infers the controller action" do
#     expect(controller.request.path_parameters[:action]).to eq("new")
#   end
# end

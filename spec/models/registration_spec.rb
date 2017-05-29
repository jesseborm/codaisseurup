require 'rails_helper'

# ----------------------------------
# ----------  The BDD way ----------
# ----------------------------------
# The test is more about the registration process

RSpec.describe Registration, type: :model do
  describe "Sets the total price" do
    before do
      login_as user
      visit events_id_path #FIXME Whats the correct path?
      # optional tests if guest_user in not host_user
    end

    it
    it "" do

    end

    it "gets event price" do

    end

    it "gets guest_count" do

    end

    it "returns total price" do

    end
  end
end

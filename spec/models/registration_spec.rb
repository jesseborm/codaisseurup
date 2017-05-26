require 'rails_helper'

# ----------------------------------
# ----------  The BDD way ----------
# ----------------------------------

RSpec.describe Registration, type: :model do
  describe "Sets the total price" do
    before do
      login_as user
      visit events_id_path #FIXME Whats the correct path?
      # tests if
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

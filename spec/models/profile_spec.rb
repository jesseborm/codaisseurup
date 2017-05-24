require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe ".by_initial" do
    subject { Profile.by_initial("S") }

    let(:profile1) { create :profile, first_name: "Sander" }
    let(:profile2) { create :profile, first_name: "Stefan" }
    let(:profile3) { create :profile, first_name: "Wouter" }

    context "matching letters" do
      it "returns a sorted array of profiles that match" do
        expect(subject).to match_array [profile1, profile2]
      end
    end

    context "non-matching letters" do
      it "does not return profiles that don't start with the given letter" do
        expect(subject).not_to include profile3
      end
    end
  end
end

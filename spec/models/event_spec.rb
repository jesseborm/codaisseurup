require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:location) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:capacity) }
    it { is_expected.to validate_presence_of(:ends_at) }
    it { is_expected.to validate_presence_of(:starts_at) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
  end

  describe "#bargain?" do
    let(:bargain_event) { create :event, price: 20 }
    let(:non_bargain_event) { create :event, price: 200 }

    it "returns true if the price is smaller than 30 EUR" do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?).to eq(false)
    end
  end

  describe ".order_by_price" do
    let!(:event1) { create :event, price: 100 }
    let!(:event2) { create :event, price: 200 }
    let!(:event3) { create :event, price: 300 }

    it "returns a sorted array of events by prices" do
      expect(Event.order_by_price).to match_array [event1, event2, event3]
    end
  end

  describe "association with user" do
    # let(:user) { create :user }
    #
    # it "belongs to a user" do
    #   event = user.events.new(name: "Best Event")
    #   expect(event.user).to eq(user)
    # end
    it { is_expected.to belong_to :user }
  end

  describe "association with category" do
    # let(:event) { create :event }
    #
    # let(:category1) { create :category, name: "A", events: [event] }
    # let(:category2) { create :category, name: "B", events: [event] }
    # let(:category3) { create :category, name: "C", events: [event] }
    #
    # it "has categories" do
    #   expect(event.categories).to include(category1)
    #   expect(event.categories).to include(category2)
    #   expect(event.categories).to include(category3)
    # end
    it { is_expected.to have_and_belong_to_many :categories }

  end
end

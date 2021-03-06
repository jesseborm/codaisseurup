require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe "GET #index" do

    let(:user) { create :user }

    it "returns http success" do
      sign_in user
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end

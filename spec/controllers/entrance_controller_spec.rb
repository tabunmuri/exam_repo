require 'rails_helper'

RSpec.describe EntranceController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #answer" do
    it "returns http success" do
      get :answer
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe StreamsController, type: :controller do
  describe "GET index" do
    it "returns OK status" do
      get :index
      expect(response).to be_ok
    end
  end
end

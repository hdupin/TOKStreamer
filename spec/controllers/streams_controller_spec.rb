require 'rails_helper'

RSpec.describe StreamsController, type: :controller do
  describe "GET index" do
    it "returns OK status" do
      get :index
      expect(response).to be_ok
    end
  end

  describe "GET show" do
    let(:user) { FactoryGirl.create(:user) }
    let(:stream) { FactoryGirl.create(:stream, user: user, session_id: 1, title: 'Stream') }
    let(:gon) { RequestStore.store[:gon].gon }

    before do
      sign_in user
      allow(OpenTokClient).to receive(:generate_token){ 'token' }
    end

    it "populates gon vars" do
      get :show, {id: stream.id}
      expect(gon['opentok']).to be_present
    end
  end
end

require 'spec_helper'

describe ReportsController do

  context 'get #index in json format' do
    let(:place) { FactoryGirl.create(:place) }

    it "returns reports from specified place" do
      get :index, place_id: place.id, format: :json
      expect(response).to be_success
      JSON.parse(response.body).should have(0).items


      reports = create! 2, :reports
      get :index, place_id: reports.first.place_id, format: :json
      expect(response).to be_success
      body = JSON.parse(response.body)
      body.should have(2).items
    end
  end

end

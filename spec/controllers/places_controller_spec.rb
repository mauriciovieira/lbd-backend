require 'spec_helper'

describe PlacesController do

  context "get #index in json format" do
    it "returns all bars" do
      get_json(:index).should have(0).items

      create! 10, :places
      get_json(:index).should have(10).items
    end
  end

end

def get_json(action)
  get action, format: :json
  expect(response).to be_success

  JSON.parse(response.body)
end

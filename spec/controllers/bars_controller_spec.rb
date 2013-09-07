require 'spec_helper'

describe BarsController do

  context "get #index in json format" do
    it "returns a list containing all bars in the database" do
      create! 10, :bars
      get_json(:index).should have(10).items
    end
  end

end

require 'spec_helper'

describe Place do

  context :relations do
    it { should have_many(:reports) }
  end

end
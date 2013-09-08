require 'spec_helper'

describe Report do

  context :relations do
    it { should belong_to(:place) }
  end

end
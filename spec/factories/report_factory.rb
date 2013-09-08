FactoryGirl.define do
  factory :report do
    place FactoryGirl.create(:place)
  end
end
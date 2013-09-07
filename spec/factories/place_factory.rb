FactoryGirl.define do
  sequence(:name) { "Bar #{(1..99).to_a.sample}" }

  factory :place do
    name { generate(:name) }
    lat 1
    lng 1
  end
end
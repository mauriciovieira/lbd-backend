FactoryGirl.define do
  sequence(:name) { "Bar #{(1..99).to_a.sample}" }

  factory :bar do
    name { generate(:name) }
  end
end
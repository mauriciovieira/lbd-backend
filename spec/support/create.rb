def create!(quantity, plural_factory_name)
  quantity.times do
    FactoryGirl.create(plural_factory_name.to_s.singularize)
  end
end

def get_json(action)
  get action, format: :json
  expect(response).to be_success

  JSON.parse(response.body)
end

def create!(quantity, plural_factory_name)
  quantity.times do
    FactoryGirl.create(plural_factory_name.to_s.singularize)
  end
end

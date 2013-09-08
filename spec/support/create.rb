def create!(quantity, plural_factory_name)
  records = []
  quantity.times do
    records << FactoryGirl.create(plural_factory_name.to_s.singularize)
  end
  records
end

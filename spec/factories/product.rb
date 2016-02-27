FactoryGirl.define do
  factory :product, class: ShareActiveRecordModels::Product do
    name 'fancy product'
    price 2
  end
end

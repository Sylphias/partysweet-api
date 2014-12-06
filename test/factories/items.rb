FactoryGirl.define do
  factory :item do
    name {Faker::App.name}
    price {Faker::Commerce.price}
  end
end

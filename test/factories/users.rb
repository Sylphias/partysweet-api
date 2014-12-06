FactoryGirl.define do
  factory :user do 
    name {Faker::Name.name}
    number {Faker::PhoneNumber.phone_number}
  end
end
FactoryGirl.define do 
  factory :party do
    user { FactoryGirl.create(:user) }
    item { FactoryGirl.create(:item)}
  end
end
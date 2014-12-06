Fabricator(:item) do
  name {Faker::App.name}
  price {Faker::Commerce.price}
end
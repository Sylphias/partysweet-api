Fabricator(:person) do
  name {Faker::Name.name}
  number {Faker::PhoneNumber.phone_number}
end
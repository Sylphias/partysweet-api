Fabricator(:party) do
  title {Faker::Name.title}
  description {Faker::Lorem.sentence(3)}
  date {Faker::Date.between(2.days.ago, Date.today)}
  time {Faker::Time.now}
  users {[Fabricate(:user)]}
  items {[Fabricate(:item)]}
  
end
FactoryBot.define do
  factory :task do
    name { Faker::Lorem.characters(number: 8) }
    description { Faker::Lorem.characters(number: 8) }
    user
  end
end
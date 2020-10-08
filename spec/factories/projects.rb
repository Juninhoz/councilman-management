FactoryBot.define do
  factory :project do
    title       { Faker::Company.name }
    description { Faker::Company.catch_phrase }
  end
end

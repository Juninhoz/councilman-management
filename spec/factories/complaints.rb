FactoryBot.define do
  factory :complaint do
    title       { Faker::Company.name }
    description { Faker::Company.catch_phrase }
    user        { FactoryBot.build(:user) }
  end
end

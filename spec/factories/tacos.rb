FactoryGirl.define do
  factory :taco do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    uri { Faker::Internet.url }
    price { Faker::Number.number(10) }
  end
end
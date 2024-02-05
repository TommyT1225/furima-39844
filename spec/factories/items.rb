FactoryBot.define do
  factory :item do
    name {Faker::Name.name}
    content {Faker::Lorem.sentence}
    category_id {Faker::Number.between(from: 2, to: 11)}
    situation_id {Faker::Number.between(from: 2, to: 7)}
    fee_id {Faker::Number.between(from: 2, to: 3)}
    area_id {Faker::Number.between(from: 2, to: 48)}
    delivery_id {Faker::Number.between(from: 2, to: 4)}
    price {Faker::Number.between(from: 300, to: 9999999)}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/test_image.png'), filename: 'test_image.png')
    end

  end
end
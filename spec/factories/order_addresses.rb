FactoryBot.define do
  factory :order_address do
    postal_code { '491-3924' }
    area_id {Faker::Number.between(from: 2, to: 48)}
    city { '愛知県' }
    street { '連騰1-1-1' }
    building_name { '名古屋ビル' }
    phone_number { Faker::Number.between(from: 1000000000, to: 99999999999) }
    token {"tok_abcdefghijk00000000000000000"}
  end
end
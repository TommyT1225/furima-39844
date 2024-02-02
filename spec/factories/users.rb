FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.email}
    password { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation {password}
    last_name_kanji {"田中"}
    last_name_kana {"タナカ"}
    first_name_kanji {"太郎"}
    first_name_kana {"タロウ"}
    birth_day {Faker::Date.between(from: '1940-01-10', to: '2017-12-31')}
  end
end
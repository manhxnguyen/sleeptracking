FactoryBot.define do
  factory :user do
    name { Faker::JapaneseMedia::SwordArtOnline.game_name }
  end
end

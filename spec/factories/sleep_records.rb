FactoryBot.define do
  factory :sleep_record do
    sleep_time { rand(10..20).hours.ago }
    wake_time { rand(1..8).hours.ago }
    sleep_duration { rand(2...20) * 60 * 60 }
    user_id { nil }
  end
end

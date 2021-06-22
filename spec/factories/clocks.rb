FactoryBot.define do
  factory :clock do
    check_in { rand(10..20).hours.ago }
    user_id { nil }
  end
end

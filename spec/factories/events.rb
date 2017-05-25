FactoryGirl.define do
  factory :event do
    name              { Faker::Lorem.sentence(1) }
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    capacity          50
    includes_food     true
    includes_drinks   true
    starts_at         DateTime.now
    ends_at           DateTime.now + 1
    price             { Faker::Commerce.price }
    user              { build(:user) }
    # category          { build(:category) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end

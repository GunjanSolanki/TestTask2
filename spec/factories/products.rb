FactoryBot.define do
  factory :product do
    sequence(:title) { |n| "title #{n}" }
    sequence(:description) { |n| "description #{n}" }
    sequence(:sku) { |n| "sku #{n}" }

    association :user, factory: :user
    association :product_type, factory: :product_type
  end
end
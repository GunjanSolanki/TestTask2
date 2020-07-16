FactoryBot.define do
  factory :variant do
    sequence(:sku) { |n| "sku #{n}" }
    sequence(:price) { |n| "#{n}" }
    sequence(:quantity) { |n| "#{n}" }

    association :product, factory: :product
  end
end
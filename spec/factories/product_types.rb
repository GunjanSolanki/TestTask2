FactoryBot.define do
  factory :product_type do
    sequence(:name) { |n| "producttype #{n}" }
  end
end
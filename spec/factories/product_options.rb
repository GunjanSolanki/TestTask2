FactoryBot.define do
  factory :product_option do
    sequence(:supported_option_type) { |n| "option #{n}" }

    association :product_type, factory: :product_type
  end
end
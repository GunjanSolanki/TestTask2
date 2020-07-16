FactoryBot.define do
  factory :variant_option do

    association :variant, factory: :variant
    association :option, factory: :option
  end
end
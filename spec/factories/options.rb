FactoryBot.define do
  factory :option do
    sequence(:option_type) { |n| "option #{n}" }
    sequence(:option_value) { |n| ["option1 #{n}", "option2 #{n}"] }
  end
end
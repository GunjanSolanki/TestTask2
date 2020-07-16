FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "name #{n}" }
    sequence(:email) { |n| "email#{n}@gmail.com" }
    sequence(:contact) { |n| "123#{n}" }
    sequence(:age) { |n| "#{n}" }
    sequence(:password) { |n| "password#{n}" }
  end
end
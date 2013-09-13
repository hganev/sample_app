FactoryGirl.define do
  factory :user do
    name     "Hristo"
    email    "Az@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end

# Defines a new sequence
FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
end

# factory :user do
#   sequence(:name)  { |n| "Person #{n}" }
#   sequence(:email) { |n| "person_#{n}@example.com"}
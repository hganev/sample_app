FactoryGirl.define do
  factory :user do
    name     "Hristo"
    email    "Az@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
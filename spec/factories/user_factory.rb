FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "user#{n}@example.com"
    end
    password "testpassword"
    password_confirmation "testpassword"
  end
end

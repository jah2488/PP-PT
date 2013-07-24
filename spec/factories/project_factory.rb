FactoryGirl.define do
  factory :project do
    sequence :user_id do |n|
      n
    end
    name "Bathroom"
  end
end

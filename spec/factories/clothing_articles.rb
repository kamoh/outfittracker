# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :clothing_article do
    description "MyString"
    color "MyString"
    clothing_type nil
  end
end

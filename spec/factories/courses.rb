# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    title "MyString"
    name "MyString"
    teacher "MyString"
    description "MyText"
    user nil
  end
end

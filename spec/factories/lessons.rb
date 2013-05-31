# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lesson do
    name "MyString"
    image_url "MyString"
    video_url "MyString"
    quiz "MyText"
    material "MyText"
    course nil
  end
end

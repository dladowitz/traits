# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :founder do
    name "David"
    image_url "http://www.someplace.com"
    quote "Try not. Do or do not, there is no try."
  end
end

FactoryGirl.define do
  factory :post do
    name "Hello world"
    content "Google is the best search engine."
    published_at "2015-08-18 13:48:18"
    user nil
  end
end

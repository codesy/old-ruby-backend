FactoryGirl.define do
  factory :bid do
    url   'http://example.com/issue/1'
    offer 5.0
    ask   100.0
  end

  sequence :url do |n|
    "http://example.com/issue/#{n}"
  end
end

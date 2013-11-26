FactoryGirl.define do
  factory :user do
    email    'alyssahacker@codesy.io'
    password 'password'
    provider 'github'
    uid      '12345'
  end

  factory :admin, class: User do
    email    'admin@codesy.io'
    password 'password'
    provider 'github'
    uid      '12345'
    admin    true
  end
end

FactoryGirl.define do
  factory :user do
    email    'alyssahacker@codesy.io'
    password 'password'
  end

  factory :admin, class: User do
    email    'admin@codesy.io'
    password 'password'
    admin    true
  end
end

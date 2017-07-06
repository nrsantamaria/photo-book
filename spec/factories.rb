FactoryGirl.define do
  factory :user do
    username('Bob')
    email('bob@email.com')
    password('123456')
  end
end

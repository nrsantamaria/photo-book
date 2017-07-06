FactoryGirl.define do
  factory :user do
    username('Bob')
    email('bob@email.com')
    password('123456')
    admin false
    avatar File.new(Rails.root + 'spec/support/missing.png')
    id 1
  end

  factory :image do
    name('Picture')
    description('Pretty picture')
    user_id 1
    avatar File.new(Rails.root + 'spec/support/missing.png')
  end
end

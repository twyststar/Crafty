FactoryGirl.define do
  factory :user do
    username('Bob')
    email('bob@bob.com')
    password('testpassword')
  end
end

FactoryGirl.define do
  factory :user do
    email "twiiter@example.com"
    password "startadmin"
    password_confirmation "startadmin"
    role "admin"
  end
end

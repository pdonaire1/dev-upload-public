FactoryGirl.define do
  factory :user do
    first_name "Pablo"
    last_name  "Gonzalez"
    username "pdonaire1"
    email "pdonaire1@example.com"
    password "123456"
    is_admin false
  end
  factory :web_app do
    page "http://devupload.com"
    description "API page to upload files and images completly free"
    user 
  end
end

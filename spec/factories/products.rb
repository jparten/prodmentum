FactoryGirl.define do 
  factory :product do 
    name "test product name"
    description "a test product description"
    user_id "1"
    image "File.open(File.join(Rails.root, 'app/assets/images/default.png'))"
  end 
end 
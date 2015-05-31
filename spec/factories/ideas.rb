FactoryGirl.define do 
  factory :idea do 
    name "test idea" 
    description "a test idea description of varying length"
    image "File.open(File.join(Rails.root, 'app/assets/images/default.png'))"
    user_id "1"
  end 
end 
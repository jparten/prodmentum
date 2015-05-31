FactoryGirl.define do 
  factory :competitor do 
    name "Competitor Test"
    description "Competitor test description"
    address "14022 129th ave NE"
    city "Kirkland"
    state "WA"
    country "USA"
    zip "98034"
    image "File.open(File.join(Rails.root, 'app/assets/images/default.png'))"
    user_id "1"
    key_products "test competitor product 1, product 2, product 3"
    strengths "test competitor strengths"
    weaknesses "test competitor weaknesses"
    opportunities "test competitor opportunities"
    threats "test competitor potential threats"
    url "http://testcompetitor.com"
    employees "2,000"
    market_cap "$55 Billion"
    stock_symbol "EXPE"
    CEO "Test CEO"
  end 
end 
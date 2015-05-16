class Idea < ActiveRecord::Base
  has_one :product
  has_many :product_ideas
  has_many :products, :through => :product_ideas
  
  ratyrate_rateable 'business_impact', 'technically_feasible', 'speed_to_market'
end

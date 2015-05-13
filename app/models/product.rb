class Product < ActiveRecord::Base
  has_one :kpi
  has_many :features
  has_many :product_ideas
  has_many :ideas, :through => :product_ideas
  mount_uploader :image, ImageUploader

end

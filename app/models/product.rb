class Product < ActiveRecord::Base
  has_one :kpi
  has_many :features
  has_many :ideas
end

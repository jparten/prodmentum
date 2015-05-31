require 'googlecharts'
 
class Product < ActiveRecord::Base
  has_one :kpi
  has_many :features
  has_many :product_ideas
  has_many :ideas, :through => :product_ideas
  belongs_to :user
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :kpi

def kpi_url
  Gchart.line(:size => '400x400', :legend => ['Dollars per Month'], :axis_with_labels => ['x','y'], :title => kpi_name,:data => kpi_data) if !kpi_data.nil?
end

private

def kpi_data
  self.kpi.key_data.split(",").map(&:to_i) if !self.kpi.nil? && self.kpi.key_data != ''
end

def kpi_name
  'Revenue'
end

end

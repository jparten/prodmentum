class ProductIdea < ActiveRecord::Base
  belongs_to :product
  belongs_to :idea
end

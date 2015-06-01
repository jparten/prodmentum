require 'rails_helper'

describe ProductsController do 

  #let(:product) { product.create!(name: 'test product 1') }

  describe "#new" do
    it "is successfull" do
      get :new
      expect(response).to be_success
    end
  end

  describe "#create" do
    it "adds a product" do
      post :create, name: product.name, description: product.description
      expect(response).to redirct_to(product_path)
    end
  end

end 
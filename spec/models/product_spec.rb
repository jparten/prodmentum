require 'rails_helper'

describe "A Product" do 
  let(:product) { create(:product) }

  it "has a valid factory" do 
    expect(product).to be_valid 
  end 


end 
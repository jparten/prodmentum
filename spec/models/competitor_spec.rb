require 'rails_helper'

describe "A competitor" do 
  let(:competitor) { create(:competitor) }

  it "has a valid factory" do 
    expect(competitor).to be_valid 
  end 

end 
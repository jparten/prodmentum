require 'rails_helper'

describe "an idea"  do 
  let(:idea) { create(:idea) }

  it "has a valid factory" do 
    expect(idea).to be_valid 
  end 

end 
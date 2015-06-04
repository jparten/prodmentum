require 'spec_helper' 

describe "creating a feature" do 


  context "with valid parameters" do 
    let(:user) { create(:user) }

    before do
      login_as(user)
      visit "/products/new"
      fill_in "product[name]", with: "Test Product 1" 
      fill_in "product[description]", with: "Test Product Description" 
      click_button 'Save Product'
    end

    before do 
      visit "/products/1"
      fill_in "feature[name]", with: "Test Feature 1" 
      fill_in "feature[description]", with: "Test Feature Description" 
      click_button 'Save Feature'
    end 

    it "displays the feature on the product page" do 
      expect(page).to have_content "Test Feature 1"
    end
  end 

end 
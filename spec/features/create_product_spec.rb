require 'spec_helper' 

describe "creating a product" do 


  context "with valid parameters" do 
    let(:user) { create(:user) }

    before do
      login_as(user)
    end

    before do 
      visit "/products/new"
      fill_in "product[name]", with: "Test Product 1" 
      fill_in "product[description]", with: "Test Product Description" 
      click_button 'Save Product'
    end 

    it "tells the user they have a new product" do 
      expect(page).to have_content "Your product has been successfully created."
    end 

    it "sends user to the product show page" do 
      expect(page).to have_content "Test Product 1" 
    end 

  end 

end 
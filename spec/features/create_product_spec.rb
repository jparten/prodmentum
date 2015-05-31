require 'rails_helper' 

describe "creating a product" do 


  context "with valid parameters" do 
    let(:user) { create(:user) }

    before do 
      visit "/products/new"
      fill_in "Name", with: "Test Product 1" 
      fill_in "Description", with: "Test Product Description" 
      fill_in "image", with: "File.open(File.join(Rails.root, 'app/assets/images/default.png'))"
    end 

    it "tells the user they have a new product" do 
      expect(page).to have_content "Your product has been successfully created."
    end 

    it "sends user to the product show page" do 
      expect(page).to have_content "#{product.name}" 
    end 

  end 

end 
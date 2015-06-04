require 'rails_helper' 

describe "creating a user" do 

  context "with valid parameters" do 

    before do 
      visit "/users/sign_up"
      fill_in "Email", with: "testuser@example.com" 
      fill_in "Password", with: "Password123" 
      fill_in "Password confirmation", with: "Password123" 
      click_button 'Sign up'
    end 

    it "tells the user they have a new user" do 
      expect(page).to have_content "You have signed up successfully"
    end 

    it "sends user to the root page" do 
      expect(page.current_path).to eq('/')
    end 

  end 

end 
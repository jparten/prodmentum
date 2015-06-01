require 'rails_helper' 

describe "creating a user" do 

  context "with valid parameters" do 

    before do 
      visit "/users/new"
      fill_in "email", with: "testuser@example.com" 
    end 

    it "tells the user they have a new user" do 
      expect(page).to have_content "Your user has been successfully created."
    end 

    it "sends user to the user show page" do 
      expect(page).to have_content "#{user.name}" 
    end 

  end 

end 
def login_as(user)
  visit "/users/sign_in"
  fill_in 'Email', with: user.email
  fill_in 'Password', with: 'Password'
  click_button 'Log in'
end
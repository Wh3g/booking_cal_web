def sign_up
    click_link "Sign up"
    fill_in "Email", with: "name@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
end

def make_booking
    click_link 'make an appointment'
    fill_in 'Name', with: 'test_name'
    fill_in 'Service', with: "Men\'s Haircut"
    fill_in 'Start time', with: "12:00"
    click_button 'Submit'
end

def sign_in
    click_button "Sign out"
    click_link "Sign in"
    fill_in 'Email', with: "name@email.com"
    fill_in 'Password', with: 'password'
    click_button 'Log in'
end
# def admin_sign_up
    
# end
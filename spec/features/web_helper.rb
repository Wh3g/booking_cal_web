def sign_up
    click_link "Sign up"
    fill_in "Email", with: "name@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
end
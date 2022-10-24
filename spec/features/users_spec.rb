require 'rails_helper'

RSpec.describe "Users", type: :feature do
    describe "users can sign up" do
        it "creates an account" do
            visit('/')
            sign_up
            expect(page).to have_content("Welcome! You have signed up successfully.")
        end

        
    end
    it "users can sign in" do
        visit('/')
        sign_up
        click_button "Sign_out"
        click_link "Sign in"
        fill_in 'Email', with: "name@email.com"
        fill_in 'Password', with: 'password'
        click_button 'Log in'
        expect(page).to have_content("Signed in successfully.")
    end
end
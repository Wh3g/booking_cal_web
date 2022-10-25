require 'rails_helper'

feature 'Bookings' do
    before do
        visit('/')
        sign_up
    end
    it "saves a booking" do
        make_booking
        expect(page).to have_content('test_name')
        expect(page).to have_content("Men\'s Haircut")
        expect(page).to have_content("12:00")
    end
    it "users can only see details for their own bookings" do
        make_booking
        click_button 'Sign out'
        expect(page).to have_content("12:00")
        expect(page).to_not have_content("test_name")
        expect(page).to_not have_content("Men\'s Haircut")
    end
end
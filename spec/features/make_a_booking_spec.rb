require 'rails_helper'

feature 'Bookings' do
    before do
        visit('/')
        sign_up
    end
    it "saves a booking" do
        
        click_link 'make an appointment'
        fill_in 'Name', with: 'test_name'
        fill_in 'Service', with: "Men\'s Haircut"
        fill_in 'Start time', with: "12:00"
        click_button 'Submit'
        expect(page).to have_content('test_name')
        expect(page).to have_content("Men\'s Haircut")
        expect(page).to have_content("12:00")
    end
end
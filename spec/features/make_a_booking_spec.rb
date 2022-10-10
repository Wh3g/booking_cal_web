require 'rails_helper'

feature 'Bookings' do
    it "saves a booking" do
        visit('/')
        click_link 'make an appointment'
        fill_in 'Name', with: 'test_name'
        fill_in 'Service', with: "Men\'s Haircut"
        datetime = Time.now
        fill_in 'Start time', with: "12:00"
        click_button 'Submit'
        expect(page).to have_content('test_name')
        expect(page).to have_content("Men\'s Haircut")
        expect(page).to have_content("12:00")
    end
end
require 'rails_helper'

RSpec.describe "Bookings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get bookings_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "creates a Booking and redirects to the Bookings page" do
      get new_booking_path
      expect(response).to render_template(:new)

      post "/bookings", params: { booking: { name: "test_name", service: "test_service", start_time: Time.now } }
      # expect(response).to redirect_to(assigns(:booking))
      follow_redirect!
      expect(response).to render_template(:index)
    end
  end 

end

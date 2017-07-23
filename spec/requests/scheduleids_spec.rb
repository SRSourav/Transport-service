require 'rails_helper'

RSpec.describe "Scheduleids", type: :request do
  describe "GET /scheduleids" do
    it "works! (now write some real specs)" do
      get scheduleids_path
      expect(response).to have_http_status(200)
    end
  end
end

require "rails_helper"

RSpec.describe ScheduleidsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/scheduleids").to route_to("scheduleids#index")
    end


    it "routes to #show" do
      expect(:get => "/scheduleids/1").to route_to("scheduleids#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/scheduleids").to route_to("scheduleids#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/scheduleids/1").to route_to("scheduleids#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/scheduleids/1").to route_to("scheduleids#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/scheduleids/1").to route_to("scheduleids#destroy", :id => "1")
    end

  end
end

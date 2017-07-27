class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @markers = Gmaps4rails.build_markers([{latitude: 47.217955, longitude: -1.542955}]) do |coordinates, marker|
      marker.lat coordinates[:latitude]
      marker.lng coordinates[:longitude]
    end
  end
end

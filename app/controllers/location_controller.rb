class LocationController < ApplicationController

  def amsterdam_rooms
    @rooms = Room.all
  end

end

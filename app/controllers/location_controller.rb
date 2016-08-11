class LocationController < ApplicationController

  def amsterdam_rooms
    @rooms = Room.where location_id: 1
  end

  def utrecht_rooms
    @rooms = Room.where location_id: 2
  end

  def denhaag_rooms
    @rooms = Room.where location_id: 3
  end

  def rotterdam_rooms
    @rooms = Room.where location_id: 4
  end

  def eindhoven_rooms
    @rooms = Room.where location_id: 5
  end
end

class LocationController < ApplicationController

  def amsterdam_rooms
    @rooms = Room.where location_id: 1
  end

  def utrecht_rooms
    @rooms = Room.all
  end

  def denhaag_rooms
    @rooms = Room.all
  end

  def rotterdam_rooms
    @rooms = Room.all
  end

  def eindhoven_rooms
    @rooms = Room.all
  end
end

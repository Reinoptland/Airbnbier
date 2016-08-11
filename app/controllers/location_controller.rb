class LocationController < ApplicationController

  def amsterdam_rooms
    @rooms = Room.all
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

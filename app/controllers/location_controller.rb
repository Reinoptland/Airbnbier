class LocationController < ApplicationController

  def amsterdam_rooms
    @user = current_user
    @rooms = Room.where location_id: 1
  end

  def utrecht_rooms
    @user = current_user
    @rooms = Room.where location_id: 2
  end

  def denhaag_rooms
    @user = current_user
    @rooms = Room.where location_id: 3
  end

  def rotterdam_rooms
    @user = current_user
    @rooms = Room.where location_id: 4
  end

  def eindhoven_rooms
    @user = current_user
    @rooms = Room.where location_id: 5
  end
end

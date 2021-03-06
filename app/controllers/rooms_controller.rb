class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  def list_all_rooms
    @user = current_user
    @rooms = Room.all
  end

  def list_all_rooms_price_asc
    @user = current_user
    @rooms = Room.order_by_price_asc
  end

  def list_all_rooms_price_desc
    @user = current_user
    @rooms = Room.order_by_price_desc
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @user = current_user
      if current_user
        user = current_user
        @booking = Booking.new({room_id: params[:id], user_id: user.id})
      end
      @disabled = Room.find(params[:id]).taken_dates
      @location = Room.find(params[:id]).location.name
  end

  # GET /rooms/new
  def new
    if current_user
      user = current_user
      @room = Room.new({user_id: user.id})
    end
  end

  # GET /rooms/1/edit
  def edit
  end

  def user
    @user = current_user
    @rooms = @user.rooms
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    if @room.bookings.count > 0
      redirect_to all_rooms_path, notice: 'You cannot delete a room with reservations, please contact Wouter@codaisseur.'
    else
    @room.destroy
    respond_to do |format|
      format.html { redirect_to all_rooms_path, notice: 'Room was successfully deleted' }
      format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:name, :description, :price, :image_url, :location_id, :user_id)
    end
end

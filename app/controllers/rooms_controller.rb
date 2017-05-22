class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @rooms = current_user.rooms
  end

  def show

  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.room.build(room_params)

    if @room.save
      redirect_to @room
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @room.update(room_params)
      redirect_to @room
    else
      render :edit
    end
  end

  def destroy

  end

  private

  def room_params
    params.require(:room).permit(:home_type, :room_type, :capacity, :bed_rooms, :bath_rooms, :listing_name, :summary, :address, :price, :active)
  end

  def set_room
    @room = Room.find(params[:id])
  end


end

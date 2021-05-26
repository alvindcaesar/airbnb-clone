class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = current_user.rooms.build(room_params)

    if @room.save
    redirect_to root_path, notice: "Room was successfully created"
    else
      render :new
      flash.now[:alert] = "Unable to create room. Please try again!"
    end

  end

  def show
  end

  def room_params
    params.require(:room).permit(:description, :home_type, :room_type, :address, :bedroom, :bathroom, :price, image: [] )
  end

end

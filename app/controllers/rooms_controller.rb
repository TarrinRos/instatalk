class RoomsController < ApplicationController
  before_action :set_room, only: [:show]

  # GET /rooms
  def index
    @rooms = Room.all
    @room = Room.new
  end

  # GET /rooms/1
  def show
  end

  # POST /rooms
  def create
    @room = Room.create!

    redirect_to @room, notice: 'the room as successfully created'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find_by(token: params[:token])
    end
end

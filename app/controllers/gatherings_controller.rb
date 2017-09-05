class GatheringsController < ApplicationController
  before_action :set_gathering, only: [:show, :update, :destroy]

  # GET /gatherings
  def index
    @gatherings = Gathering.all

    render json: @gatherings
  end

  # GET /gatherings/1
  def show
    render json: @gathering
  end

  # POST /gatherings
  def create
    # find gathering by MeetupAPIid
    # if a gathering is found... add the current users id to the array of ids for that gathering
    # if a gathering is NOT found.. created it and add the current users id to the array of ids for that gathering.


    @gathering = Gathering.new(gathering_params)

    if @gathering.save
      render json: @gathering, status: :created, location: @gathering
    else
      render json: @gathering.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gatherings/1
  def update
    if @gathering.update(gathering_params)
      render json: @gathering
    else
      render json: @gathering.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gatherings/1
  def destroy
    @gathering.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gathering
      @gathering = Gathering.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gathering_params
      params.require(:gathering).permit(:duration, :eventid, :name, :status, :time, :groupname, :link, :meetupvenuename, :meetupvenuelat, :meetupvenuelong, :meetupvenueaddress, user_ids: [] )
    end
end

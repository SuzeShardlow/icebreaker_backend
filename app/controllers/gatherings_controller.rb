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
    @gathering = Gathering.find_or_initialize_by(gathering_params)

    if @gathering.new_record?
      if @gathering.save
        @gathering.users << current_user
        render json: @gathering, status: :created, location: @gathering
      else
        render json: @gathering.errors, status: :unprocessable_entity
      end
    else
      if !@gathering.user_ids.include? current_user.id
        @gathering.users << current_user
      end

      if @gathering.save
        render json: @gathering, status: :created, location: @gathering
      else
        render json: @gathering.errors, status: :unprocessable_entity
      end
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

  def find_gathering
    @found_gathering = Gathering.find(params[:eventid])
  end

  # Only allow a trusted parameter "white list" through.
  def gathering_params
    params.require(:gathering).permit(:duration, :eventid, :name, :status, :time, :groupname, :link, :meetupvenuename, :meetupvenuelat, :meetupvenuelong, :meetupvenueaddress, user_ids: [])
  end
end

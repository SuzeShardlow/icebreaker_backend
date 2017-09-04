class MeetupgroupsController < ApplicationController
  before_action :set_meetupgroup, only: [:show, :update, :destroy]

  # GET /meetupgroups
  def index
    @meetupgroups = Meetupgroup.all

    render json: @meetupgroups
  end

  # GET /meetupgroups/1
  def show
    render json: @meetupgroup
  end

  # POST /meetupgroups
  def create
    @meetupgroup = Meetupgroup.new(meetupgroup_params)

    if @meetupgroup.save
      render json: @meetupgroup, status: :created, location: @meetupgroup
    else
      render json: @meetupgroup.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meetupgroups/1
  def update
    if @meetupgroup.update(meetupgroup_params)
      render json: @meetupgroup
    else
      render json: @meetupgroup.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meetupgroups/1
  def destroy
    @meetupgroup.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meetupgroup
      @meetupgroup = Meetupgroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meetupgroup_params
      params.require(:meetupgroup).permit(:name, :url)
    end
end

class ScheduleidsController < ApplicationController
  before_action :set_scheduleid, only: [:show, :update, :destroy]

  # GET /scheduleids
  def index
    @scheduleids = Scheduleid.all

    render json: @scheduleids
  end

  # GET /scheduleids/1
  def show
    render json: @scheduleid
  end

  # POST /scheduleids
  def create
    @scheduleid = Scheduleid.new(scheduleid_params)

    if @scheduleid.save
      render json: @scheduleid, status: :created, location: @scheduleid
    else
      render json: @scheduleid.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scheduleids/1
  def update
    if @scheduleid.update(scheduleid_params)
      render json: @scheduleid
    else
      render json: @scheduleid.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scheduleids/1
  def destroy
    @scheduleid.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduleid
      @scheduleid = Scheduleid.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scheduleid_params
      params.permit(:bus_id, :time, :starting_point, :destination, :bus_type)
    end
end

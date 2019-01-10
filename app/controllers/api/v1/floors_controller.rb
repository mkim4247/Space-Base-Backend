class Api::V1::FloorsController < ApplicationController

  before_action :find_floor, only: [:show, :update]

  def index
    @floors = Floor.all
    render json: @floors
  end

  def create
    @floor = Floor.create(floor_params)
    if @floor.valid?
      render json: { floor: FloorSerializer.new(@floor)}, status: :accepted
    else
      render json: { errors: @floor.errors.full_messages }
    end
  end

  def show
    render json: @floor
  end

  def update
    @floor.update(floor_params)
    if @floor.save
      render json: @floor, status: :accepted
    else
      render json: { errors: @floor.errors.full_messages }
    end
  end

  def destroy
    @floor.destroy
    render json: Floor.all
  end

  private

  def find_floor
    @floor = Floor.find(params[:id])
  end

  def floor_params
    params.require(:floor).permit(:level, :tower_id)
  end



end

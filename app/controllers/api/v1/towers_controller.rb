class Api::V1::TowersController < ApplicationController
  before_action :find_tower, only: [:show, :update]

  def index
    @towers = Tower.all
    render json: @towers
  end

  def create
    @tower = Tower.create(tower_params)
    if @tower.valid?
      render json: { tower: TowerSerializer.new(@tower)}, status: :accepted
    else
      render json: { errors: @tower.errors.full_messages }
    end
  end

  def show
    render json: @tower
  end

  def update
    @tower.update(tower_params)
    if @tower.save
      render json: @tower, status: :accepted
    else
      render json: { errors: @tower.errors.full_messages }
    end
  end

  def destroy
    @tower.destroy
    render json: Tower.all
  end

  private

  def find_tower
    @tower = Tower.find(params[:id])
  end

  def tower_params
    params.require(:tower).permit(:name, :happiness, :funds, :population, :user_id)
  end


end

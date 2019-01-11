class Api::V1::ShopsController < ApplicationController

  before_action :find_shop, only: [:show, :update]

  def index
    @shops = Shop.all
    render json: @shops
  end

  def create
    @shop = Shop.create(shop_params)
    if @shop.valid?
      render json: { shop: ShopSerializer.new(@shop_params)}, status: :accepted
    else
      render json: { errors: @shop.errors.full_messages }
    end
  end

  def show
    render json: @shop
  end

  def update
    @shop.update(shop_params)
    if @shop.save
      render json: @shop, status: :accepted
    else
      render json: { errors: @shop.errors.full_messages }
    end
  end

  def destroy
    @shop.destroy
    render json: Shop.all
  end

  private

  def find_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :shop_type, :floor_id)
  end



end

class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @products = @shop.products
  end
end

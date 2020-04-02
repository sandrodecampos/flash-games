class ProductsController < ApplicationController
  def index
    @products = Product.order(:id).page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end
end

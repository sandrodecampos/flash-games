class ProductsController < ApplicationController
  def index
    @products = Product.order(:id).page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @query = params[:query]
    @products = Product.where("name LIKE ? OR description LIKE ?",
                              "%#{@query}%", "%#{@query}%").page(params[:page])
  end

  def search_results
    @query = params[:query]
    @products = Product.joins(category_items: :genre)
                       .where(genres: { name: @query })
                       .page(params[:page])
  end
end

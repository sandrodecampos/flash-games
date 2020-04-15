class ProductsController < ApplicationController
  def index
    @products = Product.order(:id).page(params[:page])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "Products", :products_path
  end

  def show
    @product = Product.find(params[:id])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "Products", :products_path
    add_breadcrumb "#{@product.name}", :product_path
  end

  def search
    @query = params[:query1]
    @products = Product.where("name LIKE ? OR description LIKE ?",
                              "%#{@query}%", "%#{@query}%").page(params[:page])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "Products", :search_products_path
  end

  def search_results
    @query = params[:query2]
    @products = Product.joins(category_items: :genre)
                       .where(genres: { name: @query })
                       .page(params[:page])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "#{@query}", :search_results_products_path
  end

  def home
    @products = Product.order(:id).page(params[:page])
    add_breadcrumb 'Home', :root_path
  end

end

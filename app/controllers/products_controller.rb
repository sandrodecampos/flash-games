class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category_items).order(:id).page(params[:page])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "Games", :products_path
  end

  def show
    @product = Product.find(params[:id])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "Games", :products_path
    add_breadcrumb "#{@product.name}", :product_path
  end

  def search
    @query = params[:query1]
    @products = Product.where("name LIKE ? OR description LIKE ?",
                              "%#{@query}%", "%#{@query}%").page(params[:page])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "Games", :search_products_path
  end

  def search_results
    @query = params[:query2]
    @products = Product.includes(category_items: :genre)
                       .where(genres: { name: @query })
                       .page(params[:page])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "#{@query}", :search_results_products_path
  end

  def home
    @products = Product.includes(:category_items).order(:id).page(params[:page])
    add_breadcrumb 'Home', :root_path
  end

  def days_ago
    @products = Product.includes(:category_items).where('created_at > ?', 1.days.ago).page(params[:page])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "New Games"
  end

  def recently_updated
    @products = Product.includes(:category_items).where('updated_at > ?', 1.days.ago).page(params[:page])
    add_breadcrumb 'Home', :root_path
    add_breadcrumb "Games Recently Updated"
  end

end

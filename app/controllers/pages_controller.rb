class PagesController < ApplicationController
  def about
    @page = Page.where('id LIKE ?', "1").page(params[:page])
  end

  def contact
    @page = Page.where('id LIKE ?', "2").page(params[:id])
  end
end

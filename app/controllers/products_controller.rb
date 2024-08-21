class ProductsController < ApplicationController
  before_action :set_products, only: [ :show ]
  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new
  end

  private

  def set_products
    @product = Product.find(params[:id])
  end
end

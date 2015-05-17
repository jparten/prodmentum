class ProductsController < ApplicationController

  before_action :authenticate_user!

  def index
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params) 
    @product.user_id = current_user.id
    if @product.save 
      redirect_to @product, notice: "Your product has been successfully created."
    else 
      render :new
    end 
  end

  def edit
    @product = Product.find(params[:id]) 
  end

  def update
    @product = Product.find(params[:id]) 
    if @product.update_attributes(product_params) 
      redirect_to @product, notice: "Product updated"
    else 
      render :edit 
    end
  end

  def destroy
    @product = Product.find(params[:id]) 
    @product.destroy 
    redirect_to products_path, alert: "Product successfully deleted." 
  end

  private

  def product_params
      params.require(:product).permit(:name, :description, :image, :user_id)
  end
end
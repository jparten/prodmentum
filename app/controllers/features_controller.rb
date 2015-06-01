class FeaturesController < ApplicationController
   def create
     @product = Product.find(params[:product_id])
     @feature = @product.features.create(feature_params)
     redirect_to product_path(@product)
   end

  # def index
  #   @features = Feature.all 
  # end

  # def show
  #   @feature = Feature.find(params[:id]) 
  # end

  # def new
  #   @feature = Feature.new
  # end

  # def create
  #   @feature = Feature.new(feature_params) 
  #   if @feature.save 
  #     redirect_to @feature, notice: "Thanks for sharing your feature."
  #   else 
  #     render :new
  #   end 
  # end

  # def edit
  #   @feature = Feature.find(params[:id]) 
  # end

  # def update
  #   @feature = Feature.find(params[:id]) 
  #   if @feature.update_attributes(feature_params) 
  #     redirect_to @feature, notice: "Feature updated"
  #   else 
  #     render :edit 
  #   end
  # end

  # def destroy
  #   @feature = Feature.find(params[:id]) 
  #   @feature.destroy 
  #   redirect_to features_path, alert: "Feature successfully deleted." 
  # end

  # private 

  def feature_params 
     params.require(:feature).permit(:name, :description, :status, :image, :user_id)
  end 
  
end

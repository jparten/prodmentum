class CompetitorsController < ApplicationController 

  before_action :authenticate_user! 

  def index 
    @competitors = Competitor.all
  end 

  def show 
    @competitor = Competitor.find(params[:id]) 
  end 

    def new
    @competitor = Competitor.new
  end

  def create
    @competitor = Competitor.new(competitor_params) 
    @competitor.user_id = current_user.id
    if @competitor.save 
      redirect_to @competitor, notice: "Thanks for adding this competitor"
    else 
      render :new
    end 
  end

  def edit
    @competitor = Competitor.find(params[:id]) 
  end

  def update
    @competitor = Competitor.find(params[:id]) 
    if @competitor.update_attributes(competitor_params) 
      redirect_to @competitor, notice: "Competitor updated"
    else 
      render :edit 
    end
  end

  def destroy
    @competitor = Competitor.find(params[:id]) 
    @competitor.destroy 
    redirect_to competitors_path, alert: "Competitor successfully deleted." 
  end

  private 

  def competitor_params 
    params.require(:competitor).permit(:name, :description, :image, :user_id, :address, :state, :zip, :country, :key_products, :strengths, :weaknesses, :opportunities, :threats, :url)
  end  


end 
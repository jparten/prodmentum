class Kpis Controller < ApplicationController 

  before_action :authenticate_user! 

  def index
    @kpis = Kpi.all 
  end

  def show
    @kpi = Kpi.find(params[:id])
  end

  def new
    @kpi = Kpi.new
  end

  def create
    @kpi = Kpi.new(kpi_params) 
    @kpi.user_id = current_user.id
    if @kpi.save 
      redirect_to @kpi, notice: "Your KPI has been successfully created."
    else 
      render :new
    end 
  end

  def edit
    @kpi = Kpi.find(params[:id]) 
  end

  def update
    @kpi = Kpi.find(params[:id]) 
    if @kpi.update_attributes(product_params) 
      redirect_to @kpi, notice: "KPI updated"
    else 
      render :edit 
    end
  end

  def destroy
    @kpi = Kpi.find(params[:id]) 
    @kpi.destroy 
    redirect_to kpis_path, alert: "KPI successfully deleted." 
  end

  private

  def product_params
      params.require(:kpi).permit(:name, :key_data[], :user_id)
  end
end

end 
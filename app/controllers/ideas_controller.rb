class IdeasController < ApplicationController
  def index
    @ideas = Idea.all 
  end

  def show
    @idea = Idea.find(params[:id]) 
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params) 
    if @idea.save 
      redirect_to @idea, notice: "Thanks for sharing your idea."
    else 
      render :new
    end 
  end

  def edit
    @idea = Idea.find(params[:id]) 
  end

  def update
    @idea = Idea.find(params[:id]) 
    if @idea.update_attributes(idea_params) 
      redirect_to @idea, notice: "Idea updated"
    else 
      render :edit 
    end
  end

  def destroy
    @idea = Idea.find(params[:id]) 
    @idea.destroy 
    redirect_to ideas_path, alert: "Idea successfully deleted." 
  end

  private 

  def idea_params 
    params.require(:idea).permit(:name, :description)
  end 
  
end

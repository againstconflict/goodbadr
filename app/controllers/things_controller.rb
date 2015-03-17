class ThingsController < ApplicationController
  
  def index
    @things = Thing.all
  end
  
  def new
    
  end
  
  def show
    @thing = Thing.find(params[:id])
  end
  
  def create
    @thing = Thing.new(thing_params)
    
    @thing.save
    redirect_to @thing
  end
  
  private
  def thing_params
    params.require(:thing).permit(:name)
  end
  
end
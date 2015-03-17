class RatingsController < ApplicationController
  
  def index
    @ratings = Rating.all
  end
  
  def new
    
  end
  
  def show
    @rating = Rating.find(params[:id])
  end
  
  def create
    @rating = Rating.new(rating_params)
    
    @rating.save
    redirect_to @rating
  end
  
  private
  def rating_params
    params.require(:rating).permit(:thing_id, :user_id, :good)
  end
  
end
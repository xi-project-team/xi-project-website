class StaticPagesController < ApplicationController
  def home
    @city = City.new
  end

  def about
  end
  
  def contact
  end
  
  def data
    @city = City.new(params[:city])
    respond_to do |format|
      format.json {
        render :json => [1,2,3,4,5]
      }
    end
  end
  
end

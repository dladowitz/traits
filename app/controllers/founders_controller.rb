class FoundersController < ApplicationController
  layout "guest_pages/guest_layout"

  def index
    @founders = Founder.all
  end

  def new
    @founder = Founder.new
  end

  def create
    @founder = Founder.new(founder_params)
    if @founder.save
      render :show
    else
      render :new
    end
  end

  private

  def founder_params
    params.require(:founder).permit(:name, :image_url, :quote)
  end
end
